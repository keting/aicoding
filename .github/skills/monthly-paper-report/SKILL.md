---
name: monthly-paper-report
description: Create or update the monthly AI Coding and agent paper report for this repository. Use this when asked to survey a specific month or the previous natural month, screen recent agent-related papers, score papers from 1 to 5, write docs/monthly/YYYY-MM.md, or sync selected papers into docs/papers.md.
---

Use this skill for recurring literature curation tasks in this repository.

1. Start from external discovery instead of repository exploration.
Do not pre-read repository docs unless the user explicitly asks for it, or it is necessary to avoid duplication and choose the correct insertion point when updating docs/papers.md.

2. Split discovery by source and cross-check results.
Prioritize Hugging Face Papers, arXiv cs.AI/cs.SE/cs.CL/cs.LG/cs.CR, OpenReview, alphaXiv, Semantic Scholar, and linked code repositories.

3. When delegated subagents, parallel research helpers, or source-specific specialist agents are available, use them.
At minimum, separate discovery into independent passes such as:
- community-signal discovery from Hugging Face Papers and alphaXiv
- formal-paper discovery from arXiv, OpenReview, and Semantic Scholar
- code or project-signal verification from linked GitHub repositories

If explicit subagents are not available in the current environment, emulate the same structure yourself and keep the evidence trail separated until the merge step.

4. Run a strict two-stage filter.
- Stage 1: title pre-screen for topical fit, duplicates, off-topic papers, and obvious false positives.
- Stage 2: abstract close read for every surviving paper. Never include a paper based only on title.

5. For every strong candidate, collect five kinds of evidence.
- publication or posting time fits the requested month
- the abstract clearly states the problem
- the abstract clearly states the method, system, or analytical lens
- there is meaningful experimental, benchmark, or case-study evidence
- public signal is available when possible, such as reactions, discussion, or repository stars

6. Score papers from 1 to 5.
Use topical fit, representativeness, method clarity, evidence strength, practical relevance to AI Coding or Coding Agent research, and public signal. Public signal is secondary and must not dominate the score.

7. Write or update docs/monthly/YYYY-MM.md.
The filename is determined by the investigated month, not the execution date. If the month file already exists, update it instead of creating a duplicate. Keep the report concise, scannable, and evidence-backed.

8. Include transparency sections in the monthly report.
Always include a short rejected or watchlist section so readers can see that title screening and abstract reading were actually performed.

9. Sync only strong papers into docs/papers.md.
Default threshold is score 4 to 5. Avoid duplicate entries. Insert papers into the most suitable existing section. Keep the writing style aligned with current entries and use a single recommendation line such as “推荐语（by GitHub Agent）：★★★★☆” when only one agent is authoring the update.

10. Prefer fewer, better papers.
If the month has limited high-quality results, say so explicitly rather than padding the report with weakly related work.