# Papers

本页用于整理 AI coding（Vibe Coding）/ Coding Agent 方向的重要论文，服务于论文阅读、研究追踪与选题分析。

## 论文入口工具

> 此处为这些工具的主页面，[tools.md](tools.md) 的科研工具部分有交叉索引。

- [Hugging Face Papers](https://huggingface.co/papers)
  适合快速发现最新 AI 论文与讨论热度。
- [alphaXiv](https://www.alphaxiv.org/)
  适合在阅读 arXiv 论文时结合社区批注和讨论。
- [Zotero](https://www.zotero.org/)
  适合做论文收藏、分类、批注和引用管理，尤其适合实验室长期积累阅读清单与专题资料。

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

- [A Survey of Vibe Coding with Large Language Models](https://arxiv.org/abs/2510.12399)
  一篇聚焦 Vibe Coding 的综述论文，适合作为建立整体问题空间、研究脉络和系统分类的入口。
- [Vibe coding: programming through conversation with artificial intelligence](https://arxiv.org/abs/2506.23253)
  这篇论文更偏概念界定与交互范式讨论，适合用来理解“vibe coding”作为一种人与 AI 协同编程方式到底意味着什么。

### 2. Coding Agent 系统

- [SWE-agent: Agent-Computer Interfaces Enable Automated Software Engineering](https://arxiv.org/abs/2405.15793)
  Princeton 提出的 Coding Agent 框架，核心贡献是设计了 agent-computer interface (ACI)，显著提升 agent 在 SWE-bench 上的表现。理解 ACI 设计思想对理解整个 Coding Agent 方向至关重要。

- [OpenHands: An Open Platform for AI Software Developers as Generalist Agents](https://arxiv.org/abs/2407.16741)
  一个开源的 Coding Agent 平台（原 OpenDevin），支持多种 agent 架构和沙箱执行环境。适合理解 Coding Agent 的系统架构设计和工程实现。

- [Agentless: Demystifying LLM-based Software Engineering Agents](https://arxiv.org/abs/2407.01489)
  提出了一种不依赖 agent 循环的两阶段方法（定位 + 修复），在 SWE-bench 上取得有竞争力的结果。适合理解”agent 是否必要”这一基础问题。

### 3. 安全与风险分析

- [Is Vibe Coding Safe? Benchmarking Vulnerability of Agent-Generated Code in Real-World Tasks](https://arxiv.org/abs/2512.03262)
  关注 agent 生成代码在真实任务中的安全脆弱性问题，适合作为”效率之外还要怎么看风险”的必读材料。

### 4. 评测与基准

- [SWE-bench: Can Language Models Resolve Real-World GitHub Issues?](https://arxiv.org/abs/2310.06770)
  Coding Agent 评测的事实标准，定义了从真实 GitHub issue 出发的仓库级评测范式。（详见 [benchmarks.md](benchmarks.md)）

- [Vibe Code Bench: Evaluating AI Models on End-to-End Web Application Development](https://arxiv.org/abs/2603.04601)
  面向端到端 Web 应用开发的评测工作，适合理解当下模型和 agent 在真实开发任务上的能力边界与评估方式。

## 后续可补充内容

- 按研究主题分层的论文索引
- 每篇论文的简短摘要与价值说明
- 实验室内部推荐阅读顺序
