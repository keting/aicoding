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

6. Score papers using the absolute scoring standard below.
The same standard applies everywhere — monthly reports and docs/papers.md. There is no separate "monthly pool" scale versus "cross-year index" scale. Public signal is secondary and must not dominate the score.

Absolute scoring rubric (anchor papers are the calibration reference):

★★★★★ — Paradigm-defining. Introduces a new paradigm, core concept, or evaluation standard that the entire field subsequently adopts. "You cannot understand this area without reading this paper." Influence is directly traceable across large volumes of follow-on work.
Anchors: ReAct (ICLR2023), SWE-bench (ICLR2024), SWE-agent (NeurIPS2024), Agentless (FSE2025).
Expect 0–1 per month; most months 0.

★★★★✩ — Field-shaping. Makes a major methodological contribution within an established paradigm; widely cited or adopted. The key reference for a specific sub-area.
Anchors: CoT (NeurIPS2022), Reflexion (NeurIPS2023), CodeAct (ICML2024), MetaGPT (ICLR2024), Lost in the Middle (TACL2024).

★★★★☆ — Significant contribution. Solid methodology, strong evidence, fills a specific knowledge gap or provides a useful framework. Recommended reading for its sub-area. May be limited by one or more of: not Coding-Agent-specific, applies existing ideas, too new for community validation.
Anchors: OpenHands (ICLR2025), Toolformer (NeurIPS2023), Self-Debug (CoRR2023), RepoCoder (EMNLP2023).

★★★✩☆ — Selective reading. Executes well on a narrow problem, relevant to specific research threads, but limited methodological novelty or broad applicability.

★★★☆☆ — Conditional reference. Historical or directional value, but narrow scope, unvalidated methodology, or superseded by later work.
Anchors: AgentCoder (CoRR2023), Vibe Code Bench (CoRR2026).

★★☆☆☆ and below — Low priority. Weak connection to AI Coding / Coding Agent, or lacks technical depth and empirical support.

Score on: paradigm/methodological influence · topical fit · method clarity and evidence strength · practical value for system building or evaluation design · community validation (secondary, does not dominate).

7. Write or update docs/monthly/YYYY-MM.md.
The filename is determined by the investigated month, not the execution date. If the month file already exists, update it instead of creating a duplicate. Keep the report concise, scannable, and evidence-backed.

8. Include transparency sections in the monthly report.
Always include a short rejected or watchlist section so readers can see that title screening and abstract reading were actually performed.

9. Sync only strong papers into docs/papers.md, with a hard cap of 10 papers per month.
Default threshold is score 4 to 5. When more than 10 candidates qualify, keep papers whose method, paradigm, or finding has lasting value across years; drop incremental improvements, narrow-domain benchmarks, and papers whose value is primarily a current SOTA number. Avoid duplicate entries. Insert papers into the most suitable existing section. Keep the writing style aligned with current entries and use a single recommendation line such as "推荐语（by GitHub Agent）：★★★★☆" when only one agent is authoring the update.

When writing recommendation text for docs/papers.md, use broad time-horizon framing, not month-local language such as "本月最重要". The index spans multiple years and entries should read as durable references.

10. Prefer fewer, better papers.
If the month has limited high-quality results, say so explicitly rather than padding the report with weakly related work.
