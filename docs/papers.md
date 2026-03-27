# Papers

本页用于整理 AI coding（Vibe Coding）/ Coding Agent 方向的重要论文，服务于论文阅读、研究追踪与选题分析。

## 论文入口工具

> 论文发现与文献管理工具的详细说明见 [tools.md](tools.md) 的科研工具部分，此处仅做索引。

- [Hugging Face Papers](https://huggingface.co/papers) — 最新论文发现
- [Zotero](https://www.zotero.org/) — 文献管理与引用
- [alphaXiv](https://www.alphaxiv.org/) — 论文阅读与社区讨论
- [NotebookLM](https://notebooklm.google.com/) — AI 辅助论文阅读

## 本页建议覆盖

- survey / review
- foundational papers
- Coding Agent systems
- benchmark papers
- empirical studies
- safety / trust / evaluation

## 推荐组织方式

### 1. 综述与总览

优先整理帮助建立全局认知的综述类论文。

### 2. 基础方法与代表性系统

整理该方向的重要方法、系统框架与阶段性代表工作。

### 3. 评测与实证研究

整理 benchmark、实验研究和分析类论文，帮助理解当前研究如何被验证。

## 当前建议优先阅读

### 1. 综述与概念入口

- [A Survey of Context Engineering for Large Language Models](https://arxiv.org/abs/2507.13334)（CoRR2025）
  一篇系统整理 context engineering 的综述，适合理解为什么今天很多 agent 系统的关键差异不只在模型本身，也在上下文构造、检索、管理和工具集成方式。

  推荐语（by gpt-5.4）：★★★★★
  这是实验室非常应该优先读的一篇，因为很多 agent 系统的上限本质上受 context engineering 影响。读完它之后，再看具体 agent 论文，会更容易抓住真正决定效果的工程变量。
- [A Survey of Vibe Coding with Large Language Models](https://arxiv.org/abs/2510.12399)（CoRR2025）
  一篇聚焦 Vibe Coding 的综述论文，适合作为建立整体问题空间、研究脉络和系统分类的入口。

  推荐语（by gpt-5.4）：★★★★☆
  这是进入 Vibe Coding 研究图景最快的一篇综述，适合先建立问题空间和术语框架。实验室成员如果刚开始补课，这篇的价值很高，但它更偏总览，不如系统论文那样直接指导实现。
- [Vibe coding: programming through conversation with artificial intelligence](https://arxiv.org/abs/2506.23253)（CoRR2025）
  这篇论文更偏概念界定与交互范式讨论，适合用来理解“vibe coding”作为一种人与 AI 协同编程方式到底意味着什么。

  推荐语（by gpt-5.4）：★★★✰☆
  这篇更像概念澄清文，而不是工程路线图，适合帮助实验室统一讨论口径。读它的重点不是方法细节，而是理解为什么“对话式编程”会被看作一种新的开发范式。

### 2. Coding Agent 系统

- [SWE-agent: Agent-Computer Interfaces Enable Automated Software Engineering](https://arxiv.org/abs/2405.15793)（NeurIPS2024）
  Princeton 提出的 Coding Agent 框架，核心贡献是设计了 agent-computer interface (ACI)，显著提升 agent 在 SWE-bench 上的表现。理解 ACI 设计思想对理解整个 Coding Agent 方向至关重要。

  推荐语（by gpt-5.4）：★★★★★
  这是 Coding Agent 方向最值得优先精读的代表作之一，因为它把“工具接口如何设计”提升到了核心研究问题。实验室如果要做 agent 系统、任务环境或 benchmark，这篇几乎是绕不过去的基础文献。

- [Agentless: Demystifying LLM-based Software Engineering Agents](https://arxiv.org/abs/2407.01489)（FSE2025）
  提出了一种不依赖 agent 循环的两阶段方法（定位 + 修复），在 SWE-bench 上取得有竞争力的结果。适合理解”agent 是否必要”这一基础问题。

  推荐语（by gpt-5.4）：★★★★★
  这篇论文非常值得实验室认真读，因为它直接挑战了“做软件工程就一定要上复杂 agent loop”这个默认前提。它能帮助团队避免过早迷信复杂系统，而把注意力放回任务分解、检索和修复链路本身。

- [OpenHands: An Open Platform for AI Software Developers as Generalist Agents](https://arxiv.org/abs/2407.16741)（ICLR2025）
  一个开源的 Coding Agent 平台（原 OpenDevin），支持多种 agent 架构和沙箱执行环境。适合理解 Coding Agent 的系统架构设计和工程实现。

  推荐语（by gpt-5.4）：★★★★★
  这是目前最成熟的开源 Coding Agent 平台。实验室如果要做实验、跑 benchmark、对比不同 agent 架构，OpenHands 很可能是首选基础设施，读这篇重点在理解系统架构设计，为后续实验打基础。

- [AgentCoder: Multi-Agent-based Code Generation with Iterative Testing and Optimisation](https://arxiv.org/abs/2312.13010)（CoRR2023）
  通过 programmer、test designer、test executor 三类 agent 协作完成代码生成、测试生成和反馈迭代，是较早把多 agent 编程流程系统化的代表工作，适合理解“测试驱动的多 agent 编程”这一思路。

  推荐语（by gpt-5.4）：★★★★☆
  这是多 agent 编程体系里很早、也很典型的一篇，适合理解“角色分工 + 测试反馈”的基本套路。实验室如果想研究多 agent 编程流程，这篇很值得读，但它对真实仓库级软件工程的覆盖还有限。

### 3. 安全与风险分析

- [Is Vibe Coding Safe? Benchmarking Vulnerability of Agent-Generated Code in Real-World Tasks](https://arxiv.org/abs/2512.03262)（CoRR2025）
  关注 agent 生成代码在真实任务中的安全脆弱性问题，适合作为”效率之外还要怎么看风险”的必读材料。

  推荐语（by gpt-5.4）：★★★★✰
  如果实验室不希望研究只停留在“能不能做出来”，这篇就很值得看。它的重要性在于把注意力拉回真实代码安全风险，帮助团队建立对 agent 产物质量和攻击面的基本警觉。
- [AutoDefense: Multi-Agent LLM Defense against Jailbreak Attacks](https://arxiv.org/abs/2403.04783)（CoRR2024）
  关注多 agent 协作如何用于防御 jailbreak attack，通过响应过滤式框架提升大模型在对抗性提示下的安全性，适合作为“agent 不只是提升效率，也可以参与安全防护”的代表论文。

  推荐语（by gpt-5.4）：★★★✰☆
  这篇更偏安全防护场景，不是实验室理解 Coding Agent 主线所必须先读的核心文献。它的价值在于提醒大家，multi-agent 不只用于提效，也可以用于构建更稳健的安全机制。

### 4. 评测与基准

- [SWE-bench: Can Language Models Resolve Real-World GitHub Issues?](https://arxiv.org/abs/2310.06770)（ICLR2024）
  Coding Agent 评测的事实标准，定义了从真实 GitHub issue 出发的仓库级评测范式。（详见 [benchmarks.md](benchmarks.md)）

  推荐语（by gpt-5.4）：★★★★★
  这是实验室做 Coding Agent 几乎必须知道的一篇 benchmark 论文。即使你不直接跑 SWE-bench，也需要理解它为什么会成为事实标准，以及它对任务定义和评测方式产生了什么影响。

- [Vibe Code Bench: Evaluating AI Models on End-to-End Web Application Development](https://arxiv.org/abs/2603.04601)（CoRR2026）
  面向端到端 Web 应用开发的评测工作，适合理解当下模型和 agent 在真实开发任务上的能力边界与评估方式。

  推荐语（by gpt-5.4）：★★★★☆
  这篇很适合实验室关注“端到端真实开发任务”时阅读，因为它比传统 issue-fixing benchmark 更接近完整产品构建场景。它的核心价值在于帮助团队理解 Web 应用开发这一类任务应该怎么评测，而不仅仅是修单个 bug。

## 后续可补充内容

- 按研究主题分层的论文索引
- 每篇论文的简短摘要与价值说明
- 实验室内部推荐阅读顺序
