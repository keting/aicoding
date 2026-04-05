#!/usr/bin/env bash

set -euo pipefail

script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
repo_root="$(cd "${script_dir}/../.." && pwd)"

report_month_input="${1:-${REPORT_MONTH_INPUT:-}}"
prompt_file="${repo_root}/docs/monthly/PAPER_RESEARCH_PROMPT.md"
final_prompt_file="${FINAL_PROMPT_FILE:-$(mktemp)}"

if [[ ! -f "${prompt_file}" ]]; then
  echo "Prompt file not found: ${prompt_file}" >&2
  exit 1
fi

if [[ -n "${report_month_input}" ]]; then
  if [[ ! "${report_month_input}" =~ ^[0-9]{4}-[0-9]{2}$ ]]; then
    echo "Invalid report_month. Expected YYYY-MM, got: ${report_month_input}" >&2
    exit 1
  fi

  month_start="$(date -u -d "${report_month_input}-01" +%Y-%m-%d 2>/dev/null || true)"

  if [[ -z "${month_start}" ]]; then
    echo "Invalid report_month. Unable to parse month: ${report_month_input}" >&2
    exit 1
  fi

  report_month="${report_month_input}"
else
  report_month="$(date -u -d "$(date -u +%Y-%m-01) -1 day" +%Y-%m)"
  month_start="$(date -u -d "${report_month}-01" +%Y-%m-%d)"
fi

month_end="$(date -u -d "${month_start} +1 month -1 day" +%Y-%m-%d)"
report_path="docs/monthly/${report_month}.md"

{
  printf '%s\n' "你正在执行论文月报任务。"
  printf '\n'
  printf '%s\n' "运行时上下文："
  printf '%s\n' "- 调查月份：${report_month}"
  printf '%s\n' "- 调查时间范围：${month_start} 至 ${month_end}"
  printf '%s\n' "- 月报目标文件：${report_path}"
  printf '%s\n' "- 月报命名规则：必须使用调查论文所属年月命名，格式为 YYYY-MM.md；本次必须使用 ${report_month}.md。"
  printf '%s\n' "- 高分论文同步目标：docs/papers.md"
  printf '%s\n' "- 不需要主动参考仓库背景文档；请专注于外部论文检索、标题初筛和摘要细读。"
  printf '%s\n' "- 只有在避免 docs/papers.md 重复或确认插入位置时，才读取必要的目标文件内容。"
  printf '%s\n' "- 只能修改当前仓库中的文件，并在一个任务内完成月报和索引同步。"
  printf '\n'
} > "${final_prompt_file}"

cat "${prompt_file}" >> "${final_prompt_file}"

if [[ -n "${GITHUB_OUTPUT:-}" ]]; then
  printf 'final_prompt_file=%s\n' "${final_prompt_file}" >> "${GITHUB_OUTPUT}"
fi

printf '%s\n' "${final_prompt_file}"