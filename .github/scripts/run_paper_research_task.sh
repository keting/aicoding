#!/usr/bin/env bash

set -euo pipefail

script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
repo_root="$(cd "${script_dir}/../.." && pwd)"

final_prompt_file="${1:-${FINAL_PROMPT_FILE:-}}"
model="${2:-${MODEL:-claude-sonnet-4.6}}"
create_pull_request="${CREATE_PULL_REQUEST:-true}"
base_ref="${BASE_REF:-main}"

if [[ -z "${GITHUB_TOKEN:-}" ]]; then
  echo "GITHUB_TOKEN is required." >&2
  exit 1
fi

if [[ -z "${final_prompt_file}" ]]; then
  echo "FINAL_PROMPT_FILE is required." >&2
  exit 1
fi

if [[ ! -f "${final_prompt_file}" ]]; then
  echo "Prompt file not found: ${final_prompt_file}" >&2
  exit 1
fi

infer_github_repository() {
  local remote_url

  remote_url="$(git -C "${repo_root}" remote get-url origin 2>/dev/null || true)"

  if [[ -z "${remote_url}" ]]; then
    return 1
  fi

  remote_url="${remote_url%.git}"
  remote_url="${remote_url#git@github.com:}"
  remote_url="${remote_url#https://github.com/}"
  remote_url="${remote_url#ssh://git@github.com/}"

  if [[ "${remote_url}" =~ ^[^/]+/[^/]+$ ]]; then
    printf '%s\n' "${remote_url}"
    return 0
  fi

  return 1
}

github_repository="${GITHUB_REPOSITORY:-$(infer_github_repository || true)}"

if [[ -z "${github_repository}" ]]; then
  echo "GITHUB_REPOSITORY is required or must be inferable from git remote origin." >&2
  exit 1
fi

payload="$(jq -n \
  --rawfile event_content "${final_prompt_file}" \
  --arg model "${model}" \
  --arg base_ref "${base_ref}" \
  --argjson create_pull_request "${create_pull_request}" \
  '{
    event_content: $event_content,
    model: $model,
    create_pull_request: $create_pull_request,
    base_ref: $base_ref
  }')"

curl --fail-with-body -sS \
  -X POST \
  -H "Authorization: Bearer ${GITHUB_TOKEN}" \
  -H "Accept: application/vnd.github+json" \
  -H "X-GitHub-Api-Version: 2026-03-10" \
  "https://api.github.com/agents/repos/${github_repository}/tasks" \
  -d "${payload}"