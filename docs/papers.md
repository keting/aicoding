# Papers

本页用于整理 AI coding（Vibe Coding）/ Coding Agent 方向的重要论文，服务于论文阅读、研究追踪与选题分析。

> 如需持续跟踪新论文，可参考 [Paper Tracking SOP](paper-tracking-sop.md)。
>
> 针对入门读者的 Top 10 必读论文及阅读路线，见 [Reading Guide](reading-guide.md)。

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
  这是非常应该优先读的一篇，因为很多 agent 系统的上限本质上受 context engineering 影响。读完它之后，再看具体 agent 论文，会更容易抓住真正决定效果的工程变量。

  推荐语（by Opus 4.6）：★★★★✩
  上下文工程是当前关注的核心方向之一，这篇综述直接覆盖了 context 构造、检索、压缩、工具集成的技术全景。但它面向通用 LLM 场景，并非专为 Coding Agent 写的，需要读者自己把原理映射到编程场景。作为建立上下文工程知识体系的起点非常合适，但不能替代对具体 Coding Agent 系统中上下文策略的深入分析。

- [Context Before Code: An Experience Report on Vibe Coding in Practice](https://arxiv.org/abs/2603.11073)（CoRR2026）
  一篇关于 Vibe Coding 实践的经验报告，强调在真实生产约束下，工程重点往往从“写代码”转向“明确上下文、约束和不可委托区域”。

  推荐语（by gpt-5.4）：★★★★✰
  这篇的价值在于它把 Vibe Coding 从概念讨论拉回到真实工程现场，清楚展示了哪些问题仍然不能放心交给 agent。如果要研究“人机分工边界”和“上下文工程”，这篇是很好的实践参照。

  推荐语（by Opus 4.6）：★★★★☆
  papers.md 中目前缺少 Vibe Coding 的一手实践报告，这篇正好补上。标题"Context Before Code"本身就是一个重要洞察——在 Vibe Coding 中，上下文准备的质量决定了代码生成的质量。作为经验报告而非严格实验论文，方法论贡献有限，但对"企业转型"方向提供了稀缺的实战数据。

- [A Survey of Vibe Coding with Large Language Models](https://arxiv.org/abs/2510.12399)（CoRR2025）
  一篇聚焦 Vibe Coding 的综述论文，适合作为建立整体问题空间、研究脉络和系统分类的入口。

  推荐语（by gpt-5.4）：★★★★☆
  这是进入 Vibe Coding 研究图景最快的一篇综述，适合先建立问题空间和术语框架。如果刚开始补课，这篇的价值很高，但它更偏总览，不如系统论文那样直接指导实现。

  推荐语（by Opus 4.6）：★★★★☆
  该方向目前最完整的综述，覆盖工具、方法、评测的分类框架。新成员入门首选。但综述天然不产生新方法，对已有一定了解的研究者来说信息增量递减。

- [Vibe coding: programming through conversation with artificial intelligence](https://arxiv.org/abs/2506.23253)（CoRR2025）
  这篇论文更偏概念界定与交互范式讨论，适合用来理解“vibe coding”作为一种人与 AI 协同编程方式到底意味着什么。

  推荐语（by gpt-5.4）：★★★✰☆
  这篇更像概念澄清文，而不是工程路线图，适合帮助统一讨论口径。读它的重点不是方法细节，而是理解为什么”对话式编程”会被看作一种新的开发范式。

  推荐语（by Opus 4.6）：★★☆✩☆
  概念界定文章，讨论”对话式编程”为何是一种新范式。对统一术语有帮助，但缺乏技术深度和实证支撑，对系统构建和实验设计几乎没有直接指导。翻阅即可。

### 2. Agent 基础方法

- [ReAct: Synergizing Reasoning and Acting in Language Models](https://arxiv.org/abs/2210.03629)（ICLR2023）
  ReAct 将推理轨迹与外部行动交错结合，是后续大量 agent 系统在“思考 + 调用工具 + 再思考”范式上的重要起点。

  推荐语（by gpt-5.4）：★★★★★
  这是 agent 方法论里最基础也最有影响力的论文之一，几乎所有今天的 Coding Agent 都能看到它的影子。如果要理解 agent 为什么不是“单次生成”，而是“推理与行动交替推进”，这篇必须精读。

  推荐语（by Opus 4.6）：★★★★★
  Agent 方向的奠基论文。"推理→行动→观察"交替循环的范式是几乎所有 Coding Agent 的底层运行逻辑——SWE-agent 的 ACI 循环、OpenHands 的 agent loop 都构建在这个思想之上。引用量极高，社区影响力深远。不理解 ReAct，就不理解当前 Coding Agent 为什么这样设计。必须精读。

- [Reflexion: Language Agents with Verbal Reinforcement Learning](https://arxiv.org/abs/2303.11366)（NeurIPS2023）
  Reflexion 提出通过语言化反思和记忆缓冲区，让 agent 在不更新权重的情况下从试错中改进后续决策。

  推荐语（by gpt-5.4）：★★★★✩
  这篇对“语言反馈能否替代部分训练更新”给出了很有影响力的答案，是后续 self-reflection 与 episodic memory 设计的重要源头。如果关注 agent 的自我改进、试错学习和记忆机制，这篇很值得精读。

  推荐语（by Opus 4.6）：★★★★✩
  Agent 自我反思机制的代表作。Coding Agent 在执行失败后"回顾错误→生成反思→重新尝试"的能力直接源于这一思想。论文实验设计清晰，在多个任务上验证了反思机制的有效性。对"人机分工边界"方向有启发——如果 agent 能自我修正，人类该在哪个环节介入？与 ReAct 配合阅读，构成"行动+反思"的完整 agent 能力图景。

- [Toolformer: Language Models Can Teach Themselves to Use Tools](https://arxiv.org/abs/2302.04761)（NeurIPS2023）
  Toolformer 探索模型如何以自监督方式学会选择何时调用工具、调用什么工具以及如何使用返回结果。

  推荐语（by gpt-5.4）：★★★★✩
  这篇的历史地位很高，因为它较早系统化讨论了“模型如何学会用工具”这个核心问题。它不是最贴近 Coding Agent 实战的一篇，但对理解工具调用为什么会成为 agent 核心能力非常重要。

  推荐语（by Opus 4.6）：★★★★☆
  LLM 工具使用能力的理论根基，Meta 出品，质量和影响力都很高。Coding Agent 之所以能调用搜索、执行代码、操作文件系统，底层逻辑可追溯到这篇——模型通过自监督学习何时及如何调用外部工具。但它本身不处理编程场景，与核心方向有一步之隔。读它重点在抓住工具调用的核心思想。

- [Chain-of-Thought Prompting Elicits Reasoning in Large Language Models](https://arxiv.org/abs/2201.11903)（NeurIPS2022）
  CoT prompting 证明了通过显式中间推理步骤可以显著提升大模型在复杂推理任务上的表现，是后续 reasoning agent 设计的重要起点。

  推荐语（by gpt-5.4）：★★★★✩
  这篇不是 Coding Agent 专项论文，但它对今天几乎所有推理型 agent 的思维链设计都有基础影响。要理解 agent 为什么需要显式中间步骤、为什么复杂任务常常不能直接端到端生成，这篇非常值得读。

  推荐语（by Opus 4.6）：★★★★✩
  所有 agent 推理能力的思想源头。CoT 是 ReAct 的前置依赖，没有“让模型一步步想”，就没有后续的“边想边做”。引用量极高，影响力覆盖整个 LLM 领域。理解 agent 推理机制的必读基础。

- [CodeAct: Executable Code Actions Elicit Better LLM Agents](https://arxiv.org/abs/2402.01030)（ICML2024）
  CodeAct 提出用可执行代码统一 agent 的动作空间，让 agent 通过生成并执行 Python 代码与环境交互，而不是依赖固定 JSON 或文本动作。

  推荐语（by gpt-5.4）：★★★★✩
  这篇和 AI coding / agents 的结合非常紧，因为它直接重新定义了 agent “怎么行动”这个核心问题。对研究代码代理、工具调用接口和可执行动作空间的人来说，这篇是很值得精读的方法论文。

  推荐语（by Opus 4.6）：★★★★✩
  来自 OpenHands 同一团队，证明了“用可执行代码作为 agent 行动”优于 JSON 或文本格式。直接影响 Coding Agent 的 ACI 设计，agent 的行动空间本身就应该是代码。与 SWE-agent 的 ACI 思想互补。

- [Teaching Large Language Models to Self-Debug](https://arxiv.org/abs/2304.05128)（CoRR2023）
  这篇论文研究大模型如何通过解释代码、分析执行结果和迭代修正来完成 self-debug，证明无需人工标注反馈也能提升代码生成质量。

  推荐语（by gpt-5.4）：★★★★☆
  这篇非常适合放在“人机分工边界”和“代码可靠性提升”两个问题之间来看，因为它抓住了代码代理最核心的能力之一：出错后能否自己修。它比泛化的 reasoning 论文更贴近真实编程场景，对后续调试型 agent 和验证机制研究很有价值。

  推荐语（by Opus 4.6）：★★★★☆
  Reflexion 在代码领域的具体化，教模型通过执行反馈自行调试。对“人机分工边界”有直接启发，如果 agent 能自己调试，人类在代码审查环节的角色如何重新定义？

### 3. Coding Agent 系统

- [SWE-agent: Agent-Computer Interfaces Enable Automated Software Engineering](https://arxiv.org/abs/2405.15793)（NeurIPS2024）
  Princeton 提出的 Coding Agent 框架，核心贡献是设计了 agent-computer interface (ACI)，显著提升 agent 在 SWE-bench 上的表现。理解 ACI 设计思想对理解整个 Coding Agent 方向至关重要。

  推荐语（by gpt-5.4）：★★★★★
  这是 Coding Agent 方向最值得优先精读的代表作之一，因为它把”工具接口如何设计”提升到了核心研究问题。如果要做 agent 系统、任务环境或 benchmark，这篇几乎是绕不过去的基础文献。

  推荐语（by Opus 4.6）：★★★★★
  ACI（Agent-Computer Interface）的提出是本方向最有影响力的思想贡献之一——agent 的能力上限不只取决于模型，更取决于它如何与环境交互。这个洞察贯穿上下文工程、人机分工、系统架构三个方向。所有后续 Coding Agent 系统的设计都或多或少受此影响。必须精读。

- [Agentless: Demystifying LLM-based Software Engineering Agents](https://arxiv.org/abs/2407.01489)（FSE2025）
  提出了一种不依赖 agent 循环的两阶段方法（定位 + 修复），在 SWE-bench 上取得有竞争力的结果。适合理解”agent 是否必要”这一基础问题。

  推荐语（by gpt-5.4）：★★★★★
  这篇论文非常值得认真读，因为它直接挑战了”做软件工程就一定要上复杂 agent loop”这个默认前提。它能帮助团队避免过早迷信复杂系统，而把注意力放回任务分解、检索和修复链路本身。

  推荐语（by Opus 4.6）：★★★★★
  最具批判性价值的论文。用两阶段简单方法（定位+修复）挑战了”必须用 agent 循环”的默认假设，且结果有竞争力。对”人机分工边界”方向是根本性文献——它迫使你回答”agent 到底比简单 pipeline 多解决了什么问题”。不读这篇就开始做 agent 系统，容易陷入过度工程。必须精读。

- [OpenHands: An Open Platform for AI Software Developers as Generalist Agents](https://arxiv.org/abs/2407.16741)（ICLR2025）
  一个开源的 Coding Agent 平台（原 OpenDevin），支持多种 agent 架构和沙箱执行环境。适合理解 Coding Agent 的系统架构设计和工程实现。

  推荐语（by gpt-5.4）：★★★★★
  这是目前最成熟的开源 Coding Agent 平台。如果要做实验、跑 benchmark、对比不同 agent 架构，OpenHands 很可能是首选基础设施，读这篇重点在理解系统架构设计，为后续实验打基础。

  推荐语（by Opus 4.6）：★★★★☆
  开源 Coding Agent 平台的工程标杆，跑实验大概率会用到。但作为论文，系统描述多于方法创新，学术贡献偏弱。读它的价值在于理解架构设计和工程取舍，而非学习新方法。

- [Towards Realistic Project-Level Code Generation via Multi-Agent Collaboration and Semantic Architecture Modeling](https://arxiv.org/abs/2511.03404)（CoRR2025）
  这篇论文同时提出项目级代码生成数据集 CodeProjectEval 和多 agent 框架 ProjectGen，强调用语义架构树来桥接需求与代码实现。

  推荐语（by gpt-5.4）：★★★★✰
  这篇非常贴近 project-level code generation 和多 agent 协作问题，方向抓得很准。虽然还比较新、影响力尚在形成，但它把“需求到架构再到代码”的链条讲得比很多工作更完整，值得重点关注。

  推荐语（by Opus 4.6）：★★★★☆
  同时命中"多 Agent 协作"和"项目级代码生成"两个核心关切。相比 AgentCoder 只处理函数级任务，这篇直接面向项目级，引入语义架构建模来指导多 agent 分工，更接近真实软件开发场景。但作为较新的工作，方法的普适性和社区验证尚需观察。

- [AgentCoder: Multi-Agent-based Code Generation with Iterative Testing and Optimisation](https://arxiv.org/abs/2312.13010)（CoRR2023）
  通过 programmer、test designer、test executor 三类 agent 协作完成代码生成、测试生成和反馈迭代，是较早把多 agent 编程流程系统化的代表工作，适合理解“测试驱动的多 agent 编程”这一思路。

  推荐语（by gpt-5.4）：★★★★☆
  这是多 agent 编程体系里很早、也很典型的一篇，适合理解”角色分工 + 测试反馈”的基本套路。如果想研究多 agent 编程流程，这篇很值得读，但它对真实仓库级软件工程的覆盖还有限。

  推荐语（by Opus 4.6）：★★★☆☆
  多 Agent 编程的早期探索，角色分工（programmer / test designer / test executor）设计有启发性。但它只处理函数级代码生成，与当前仓库级 Coding Agent 的主流评测差距很大。作为”多 Agent 协作”方向的历史参考可读，但不具备作为实验基线的条件。

- [AutoCodeRover: Autonomous Program Improvement](https://arxiv.org/abs/2404.05427)（ISSTA2024）
  AutoCodeRover 是一个更偏软件工程视角的程序改进 agent，强调代码搜索、程序分析与 LLM 结合来完成真实仓库中的自动修复与改进任务。

  推荐语（by gpt-5.4）：★★★★✩
  这篇很值得和 SWE-agent、Agentless 放在一起读，因为它代表了另一条更偏程序分析和工程约束结合的路线。对研究真实软件工程任务中的 agent 能力边界、以及“LLM + program analysis”如何协同的人来说，这篇很有价值。

  推荐语（by Opus 4.6）：★★★★☆
  与 SWE-agent、Agentless 同属仓库级修复方向，但采用代码搜索加程序分析的不同路线。三者对比阅读可更全面理解 Coding Agent 设计空间，分别对应基于 ACI 的、无 agent 的、基于程序分析的路径。

- [MetaGPT: Meta Programming for A Multi-Agent Collaborative Framework](https://arxiv.org/abs/2308.00352)（ICLR2024）
  MetaGPT 将软件工程团队中的不同角色显式映射为多 agent 协作框架，通过 SOP 驱动从需求、设计到实现的任务分解与协同。

  推荐语（by gpt-5.4）：★★★★☆
  这篇是多 agent 编程系统里影响力很高的一篇，适合帮助理解“角色化协作”为什么会成为一个稳定范式。虽然它的工程落地和评测还存在可讨论空间，但对研究多 agent 软件开发流程的人来说仍然是绕不开的代表作。

  推荐语（by Opus 4.6）：★★★★✩
  多 Agent 软件开发方向最有影响力的系统之一。核心贡献是引入结构化通信协议（SOP），让 agent 之间用标准化文档而非自由文本交流，显著减少幻觉。直接对应“多 Agent 协作”研究方向。

- [Composer 2 Technical Report](https://arxiv.org/abs/2603.24477)（CoRR2026）
  Cursor Research 发布的 agentic 软件工程专用 frontier 模型。核心训练方法：两阶段（继续预训练 + 大规模 RL），在与生产完全等价的 Cursor 部署 harness 环境中进行 RL 训练；引入 CursorBench 评测真实大型代码库上的 SWE 任务。SWE-bench Multilingual 73.7%，Terminal-Bench 61.7%。

  推荐语（by Opus 4.6）：★★★★☆
  首个公开的 agentic SWE 专用 frontier 模型技术报告，核心价值在于展示了"在自身产品 harness 等价环境中做 RL"的训练范式——工具链、沙箱结构、评测环境与生产部署完全一致。作为技术报告，具体数字将被后续版本超越，但这种训练范式对理解如何构建 agent 专用模型具有持久参考价值。

### 4. 上下文工程

- [Agentic Context Engineering: Evolving Contexts for Self-Improving Language Models](https://arxiv.org/abs/2510.04618)（ICLR2026）
  这篇论文把上下文视为可持续演化的 playbook，通过生成、反思和策展式更新来改进 agent 与任务系统的表现。

  推荐语（by gpt-5.4）：★★★★✩
  这篇的相关性非常高，因为它把 context engineering 从“提示技巧”推进成了“持续演化的系统机制”。虽然影响力还在形成中，但研究问题切得很准，尤其适合作为上下文工程方向的重点论文。

  推荐语（by Opus 4.6）：★★★★✩
  精准对应"上下文工程"研究方向。讨论 agent 如何动态演化、优化自身上下文，而不只是被动接受固定 prompt——这个视角对理解 Coding Agent 在多轮交互中如何维持和改进代码库理解至关重要。建议与 Context Engineering 综述配合阅读：综述给全景，这篇给方法深度。

- [Lost in the Middle: How Language Models Use Long Contexts](https://arxiv.org/abs/2307.03172)（TACL2024）
  这篇论文系统分析了长上下文模型对不同位置关键信息的利用能力，指出模型往往更擅长利用开头和结尾的信息，而容易忽略中间位置。

  推荐语（by gpt-5.4）：★★★★✩
  这篇是长上下文研究里的经典问题定义论文，对理解为什么“给更多上下文”不等于“模型真的用好了上下文”非常关键。做上下文工程、仓库级代理或检索增强系统时，这篇几乎是必须知道的基础文献。

  推荐语（by Opus 4.6）：★★★★✩
  揭示了 LLM 的位置偏差，模型倾向于关注上下文头尾而忽略中间。对 Coding Agent 上下文工程有直接工程意义，关键代码放在 prompt 什么位置，会直接影响 agent 表现。做上下文工程方向必须了解的基础约束。

- [SWE-Pruner: Self-Adaptive Context Pruning for Coding Agents](https://arxiv.org/abs/2601.16746)（CoRR2026）
  SWE-Pruner 研究 coding agents 在真实长上下文软件工程任务中如何进行自适应上下文裁剪，以在保持效果的同时降低 token 成本。

  推荐语（by gpt-5.4）：★★★★✩
  这篇和上下文工程主线贴得非常近，而且比通用压缩论文更聚焦真实 coding agent 场景。对于研究大型仓库任务、长程上下文控制和成本效果平衡的人来说，这篇很值得重点关注。

  推荐语（by Opus 4.6）：★★★★✩
  比通用压缩论文更聚焦 Coding Agent 场景，讨论 agent 在真实长上下文任务中如何做任务感知的裁剪。同时命中“上下文工程”和“Coding Agent”两个核心关切，对大型仓库理解、成本控制和性能平衡都有直接参考价值。

- [ACON: Optimizing Context Compression for Long-horizon LLM Agents](https://arxiv.org/abs/2510.00615)（CoRR2025）
  ACON 关注长时程 agent 的上下文压缩问题，试图在降低 token 开销的同时保留关键历史信息和行为表现。

  推荐语（by gpt-5.4）：★★★★✰
  这篇切中长程 agent 的一个非常现实的瓶颈：上下文越来越长时，系统如何继续可用且可负担。对上下文工程方向尤其重要，读它可以帮助大家把“压缩”视为 agent 系统设计中的核心能力，而不只是推理前的小优化。

  推荐语（by Opus 4.6）：★★★✩☆
  聚焦 agent 长程任务中的上下文压缩。Coding Agent 处理大型仓库时上下文窗口不够用是核心瓶颈之一。提供了面向 agent 场景的压缩方案，比通用 NLP 压缩更贴近实际需求，但该工作较新且偏技术细节，更适合做上下文工程方向的同学深入读。

- [PAACE: A Plan-Aware Automated Agent Context Engineering Framework](https://arxiv.org/abs/2512.16970)（CoRR2025）
  PAACE 提出 plan-aware 的自动化上下文工程框架，把任务计划结构显式纳入上下文构造与压缩过程，以提升 agent 在复杂任务中的表现。

  推荐语（by gpt-5.4）：★★★★✩
  这篇很适合放在评测与框架交叉位置来看，因为它不只是提出方法，还隐含了一个重要判断：上下文工程应该围绕任务计划来组织。对研究复杂 agent workflow、长任务执行和上下文调度的人来说，这篇值得重点读。

  推荐语（by Opus 4.6）：★★★★☆
  把 compression、plan structure 和 task relevance 放进同一个框架，比静态压缩更接近真实 agent 系统中的动态上下文管理问题。与 ACON 和 SWE-Pruner 一起看，能形成上下文工程方法谱系的对照。

- [RepoCoder: Repository-Level Code Completion Through Iterative Retrieval and Generation](https://arxiv.org/abs/2303.12570)（EMNLP2023）
  RepoCoder 提出基于迭代检索与生成的 repository-level code completion 框架，并配套提出 RepoBench 来衡量仓库级代码补全能力。

  推荐语（by gpt-5.4）：★★★★☆
  这篇是 repository-level code generation / completion 方向的早期代表作，对理解“仓库级上下文到底如何进入生成过程”非常有帮助。它和后来的 coding agents 一起读，能更清楚看出检索增强与仓库级上下文建模是如何一步步发展起来的。

  推荐语（by Opus 4.6）：★★★★☆
  仓库级代码补全的代表工作，核心是“迭代检索 + 生成”。这正是上下文工程在编程场景的具体实践，先检索相关代码作上下文，生成后再检索更精准的片段。对理解 Coding Agent 如何从大型仓库中提取有效上下文有直接帮助。

- [FastCode: Structural Scouting for Repository-Scale Reasoning](https://arxiv.org/abs/2603.01012)（CoRR2026）
  将仓库级推理拆分为"轻量结构侦察"和"目标内容读取"两阶段；侦察阶段构建高价值摘要地图，避免全文遍历，显著降低 token 消耗并提升定位准确率。

  推荐语（by Opus 4.6）：★★★★☆
  将仓库级推理拆分为"轻量结构侦察"和"目标内容读取"两阶段，精准解决了"全文遍历 token 爆炸"与"盲目定位失准"之间的张力。在 SWE-QA、LOC-BENCH、GitTaskBench 三个基准上均表现领先且 token 效率显著改善，是上下文工程在仓库级 agent 场景的扎实实践。

### 5. 安全与风险分析

- [Is Vibe Coding Safe? Benchmarking Vulnerability of Agent-Generated Code in Real-World Tasks](https://arxiv.org/abs/2512.03262)（CoRR2025）
  关注 agent 生成代码在真实任务中的安全脆弱性问题，适合作为”效率之外还要怎么看风险”的必读材料。

  推荐语（by gpt-5.4）：★★★★✰
  如果不希望研究只停留在”能不能做出来”，这篇就很值得看。它的重要性在于把注意力拉回真实代码安全风险，帮助团队建立对 agent 产物质量和攻击面的基本警觉。

  推荐语（by Opus 4.6）：★★★★☆
  直接回答”AI 生成的代码安不安全”这个企业落地绕不开的问题。提供了系统性的脆弱性评估框架和真实任务上的实证数据。对”企业转型风险管理”方向的同学是高优先级阅读。

- [We Urgently Need Privilege Management in MCP: A Measurement of API Usage in MCP Ecosystems](https://arxiv.org/abs/2507.06250)（CoRR2025）
  这篇论文对 2,562 个真实 MCP 应用做了安全测量，指出插件继承高权限、缺乏隔离和权限管理不足所带来的系统性风险。

  推荐语（by gpt-5.4）：★★★★✩
  这篇和当前 agent 工具生态的现实问题高度相关，尤其适合关注 MCP、工具调用边界和安全治理的同学。它的贡献不只是指出风险，而是用大规模测量把“权限管理必须进入 agent 研究议程”这件事说清楚了。

  推荐语（by Opus 4.6）：★★★✩☆
  MCP 正在成为 Coding Agent 工具链的标准协议，这篇对 MCP 生态的权限管理缺陷做了系统度量。对理解工具链安全风险有实际价值——用 MCP 接入各种工具时，权限边界在哪里？但论文偏度量分析，不提供解决方案，且 MCP 生态变化很快，时效性有限。

- [AutoDefense: Multi-Agent LLM Defense against Jailbreak Attacks](https://arxiv.org/abs/2403.04783)（CoRR2024）
  关注多 agent 协作如何用于防御 jailbreak attack，通过响应过滤式框架提升大模型在对抗性提示下的安全性，适合作为“agent 不只是提升效率，也可以参与安全防护”的代表论文。

  推荐语（by gpt-5.4）：★★★✰☆
  这篇更偏安全防护场景，不是理解 Coding Agent 主线所必须先读的核心文献。它的价值在于提醒大家，multi-agent 不只用于提效，也可以用于构建更稳健的安全机制。

  推荐语（by Opus 4.6）：★★☆☆☆
  关注多 agent 防御 jailbreak 攻击，这是通用 LLM 安全领域的问题，与 AI Coding / Coding Agent 方向的关联性弱。除非专门做安全方向，否则优先级很低。

### 6. 评测与基准

- [SWE-bench: Can Language Models Resolve Real-World GitHub Issues?](https://arxiv.org/abs/2310.06770)（ICLR2024）
  Coding Agent 评测的事实标准，定义了从真实 GitHub issue 出发的仓库级评测范式。（详见 [benchmarks.md](benchmarks.md)）

  推荐语（by gpt-5.4）：★★★★★
  这是做 Coding Agent 几乎必须知道的一篇 benchmark 论文。即使你不直接跑 SWE-bench，也需要理解它为什么会成为事实标准，以及它对任务定义和评测方式产生了什么影响。

  推荐语（by Opus 4.6）：★★★★★
  Coding Agent 评测的事实标准和坐标原点。它定义了"从真实 GitHub issue 出发的仓库级评测"范式，后续几乎所有系统都在此基准上比较。不理解 SWE-bench 的构造逻辑，就无法正确解读该方向的任何实验结果。必须精读。

- [Evaluating Large Language Models Trained on Code](https://arxiv.org/abs/2107.03374)（CoRR2021）
  这篇论文提出了 Codex 评测中的 HumanEval 基准，强调以功能正确性而不是表面字符串匹配来评价代码生成模型。

  推荐语（by gpt-5.4）：★★★★★
  这是代码大模型评测史上的基础文献之一，因为 HumanEval 改变了整个社区衡量代码生成质量的方式。即使今天研究重点已经转向 coding agents，这篇依然值得精读，因为很多后续 benchmark 的评价思路都能追溯到这里。

  推荐语（by Opus 4.6）：★★★★✩
  代码生成评测的历史起点。HumanEval 定义了 pass@k 指标和函数级评测范式，后续很多 benchmark 都在这个框架上演进。理解评测体系如何发展，必须从这篇开始。

- [FeatBench: Towards More Realistic Evaluation of Feature-level Code Generation](https://arxiv.org/abs/2509.22237)（CoRR2025）
  FeatBench 针对 feature-level code generation 设计了更贴近真实开发情境的 benchmark，强调纯自然语言需求、持续演化数据和防回归测试。

  推荐语（by gpt-5.4）：★★★★✩
  这篇非常适合补足“修 bug”之外的评测视角，因为 feature implementation 更接近很多真实 Vibe Coding 任务。它的影响力还在增长，但研究问题很关键，尤其能帮助团队理解 agent 为什么常常会出现 scope creep 和回归破坏。

  推荐语（by Opus 4.6）：★★★★☆
  填补了函数级（HumanEval）和仓库级（SWE-bench）之间的评测空白。Feature 级评测更贴近开发者日常工作粒度——"加一个功能"比"修一个 bug"更接近真实需求。对设计自己的评测体系有直接参考价值。但作为新 benchmark，采用度和社区认可还在建立中。

- [Measuring Agents in Production](https://arxiv.org/abs/2512.04123)（CoRR2025）
  这是一篇关于生产环境 agent 的大规模实证研究，总结了真实部署中的系统模式、评估方式和主要可靠性挑战。

  推荐语（by gpt-5.4）：★★★★✩
  这篇特别值得读，因为它不是在理想 benchmark 上谈 agent，而是在真实部署场景里总结什么方法真正有效。它对企业转型、可控性和评测设计都很有启发，能帮助大家避免只盯着学术基准而忽视生产约束。

  推荐语（by Opus 4.6）：★★★★☆
  关注 agent 在真实生产环境中如何度量，而非 benchmark 上的得分。这正是"企业转型"方向的核心关切——企业不关心 SWE-bench 分数，关心的是 agent 上线后怎么衡量 ROI、可靠性和风险。填补了学术评测和工业落地之间的认知缺口。

- [Vibe Code Bench: Evaluating AI Models on End-to-End Web Application Development](https://arxiv.org/abs/2603.04601)（CoRR2026）
  面向端到端 Web 应用开发的评测工作，适合理解当下模型和 agent 在真实开发任务上的能力边界与评估方式。

  推荐语（by gpt-5.4）：★★★★☆
  这篇很适合关注”端到端真实开发任务”时阅读，因为它比传统 issue-fixing benchmark 更接近完整产品构建场景。它的核心价值在于帮助团队理解 Web 应用开发这一类任务应该怎么评测，而不仅仅是修单个 bug。

  推荐语（by Opus 4.6）：★★★☆☆
  把评测从”修 bug”扩展到”端到端构建 Web 应用”，方向有价值。但该工作很新，任务设计和评测指标的合理性尚未经社区充分检验，暂不建议作为核心参考，持续关注即可。

- [SWE-ABS: Adversarial Test Augmentation for Benchmarking Coding Agents](https://arxiv.org/abs/2603.00520)（CoRR2026）
  两阶段对抗测试增强框架：①覆盖驱动增强（程序切片锁定未覆盖区域补充测试用例）；②突变驱动对抗测试（合成"似是而非的错误补丁"）。对 SWE-Bench Verified 500 个实例，拒绝 19.71% 之前认为通过的补丁，顶级代理得分从 78.80% 降至 62.20%，原排名第一的代理跌至第五名。

  推荐语（by Opus 4.6）：★★★★✩
  对 SWE-bench——本方向事实评测标准——的可靠性提出系统性质疑：19.71% 的"已解决"补丁在对抗测试下暴露为语义错误，顶级 agent 排名发生实质性变化。两阶段框架（覆盖驱动增强 + 突变驱动对抗）方法论严谨，结论具有跨年持久性——只要 SWE-bench 仍是标准基准，这篇就是必要的修正参照。未给满分是因为它改进而非定义评测范式。

- [BeyondSWE: Can Code Agents Survive Beyond Single-Repo Bug Fixing?](https://arxiv.org/abs/2603.03194)（CoRR2026）
  将评测范围扩展至跨仓库推理、领域专业化和完整仓库生成（500 个真实实例）；所有前沿模型均在 45% 以下停滞，无一模型能在所有任务类型上持续良好表现。

  推荐语（by Opus 4.6）：★★★★☆
  将 Coding Agent 评测从单仓 bug fix 扩展到跨仓库推理、领域专业化和完整仓库生成三个维度，500 个真实实例覆盖面扎实。所有前沿模型均在 45% 以下停滞的结论揭示了当前 agent 能力的天花板。填补了 SWE-bench 单仓范式之外的重要评测空白，方向先导价值高于具体数字。

- [SlopCodeBench: Benchmarking Code Quality Degradation in Iterative Agent Tasks](https://arxiv.org/abs/2603.24755)（CoRR2026）
  针对多轮迭代任务设计的代码质量退化基准：80% 的 agent 轨迹随迭代轮次出现结构侵蚀（圈复杂度/重复代码/可维护性指数恶化），揭示 agent 在迭代任务中逐步牺牲代码质量来维持功能通过率的系统性模式。

  推荐语（by Opus 4.6）：★★★★☆
  揭示了现有评测体系的真实盲点——agent 在多轮迭代中系统性地牺牲代码质量来维持功能通过率。80% 的轨迹出现结构侵蚀（圈复杂度、重复代码、可维护性指数恶化）这一发现，对 vibe coding 范式下代码资产长期可维护性敲响警钟。将"功能正确之外的质量维度"引入 agent 评测，是现有 benchmark 的必要补充。

- [SWE-CI: Evaluating Agent Capabilities in Maintaining Codebases via Continuous Integration](https://arxiv.org/abs/2603.03823)（CoRR2026）
  首个基于 CI 循环的 repo 级 benchmark：100 个任务覆盖平均 233 天开发历史，要求 agent 保持仓库在演化过程中持续通过 CI。评测维度从"单点修复"扩展至"长期可维护性"。

  推荐语（by Opus 4.6）：★★★★☆
  将评测范式从一次性 bug 修复推进到 CI 驱动的长期可维护性——agent 不仅要修问题，还要在 233 天开发历史的持续演化中保持仓库 CI 通过。这是现有评测中罕见的"时间维度"要求。与 SWE-ABS（评测可靠性）和 BeyondSWE（任务类型扩展）配合阅读，可构建 SWE-bench 之后的完整评测视角。

- [SWE-Skills-Bench: Do Agent Skills Actually Help in Real-World Software Engineering?](https://arxiv.org/abs/2603.15401)（CoRR2026）
  对 49 个公开 SWE skill（推理时注入的结构化知识包）进行严格有/无配对评测（≈565 个任务实例）：39 个 skill 零通过率提升，平均增益仅 +1.2%；token overhead 最高增加 451%；仅 7 个专业化 skill 有实质收益（最高 +30%）；3 个 skill 因版本不匹配反而降低性能。

  推荐语（by Opus 4.6）：★★★★☆
  对 skill injection——当前社区快速采用的 agent 增强手段——给出了严格的实证否定：49 个公开 skill 中 39 个零提升，平均增益仅 +1.2%，token overhead 最高增加 451%。反直觉的负面结果具有类似 Agentless 的批判价值——挑战了"给 agent 更多知识就能提升表现"的朴素假设。在为 agent 配置 skill 之前是必要参照。

## 后续可补充内容

- 按研究主题分层的论文索引
- 每篇论文的简短摘要与价值说明
