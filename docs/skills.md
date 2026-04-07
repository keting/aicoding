# Skills

本页用于整理与 AI coding（Vibe Coding）/ Coding Agent 相关的 skill、workflow、prompt 模板和实践经验。

## 当前收录

### 1. Skill Creator

- `skill-creator`
- 来源：本地预装系统技能

Skill Creator 是一个用于创建和更新 skills 的指导型技能，重点在于帮助 agent 产出结构清晰、触发条件明确、上下文成本可控的高质量 skill。

它强调 skill 应该保持精简，把核心流程写进 `SKILL.md`，把变体细节、参考资料、脚本和资产分层管理，适合用来研究“如何系统化沉淀 agent 能力”。

在不同 agent 平台中，这类技能通常通过“显式调用技能名”或在任务意图中明确表达“创建/更新一个 skill”来触发。例如在 Claude Code 中通常通过 `Skill` 工具加载；在 Codex 环境中则通常由系统内置的 skills 发现与触发机制根据用户请求匹配加载。


## 主流 Skills 聚合仓库

以下仓库是 Claude Code Skills 生态中最活跃、内容最丰富的资源索引：

### 综合 Awesome 列表

| 仓库 | 说明 |
|------|------|
| [hesreallyhim/awesome-claude-code](https://github.com/hesreallyhim/awesome-claude-code) | **最全面的精选列表**，涵盖 skills、agents、plugins、hooks、slash-commands、agent orchestrators 等，分类清晰、质量把控严格 |
| [travisvn/awesome-claude-skills](https://github.com/travisvn/awesome-claude-skills) | 精选 Claude Skills 和工具列表，聚焦 Claude Code 的自定义工作流 |
| [ComposioHQ/awesome-claude-skills](https://github.com/ComposioHQ/awesome-claude-skills) | 按场景分类的实用 skills 列表：文档处理、开发工具、数据分析、商业与营销等 |
| [VoltAgent/awesome-agent-skills](https://github.com/VoltAgent/awesome-agent-skills) | 1000+ agent skills，兼容 Codex、Gemini CLI 等多平台，强调跨 agent 互通 |
| [Chat2AnyLLM/awesome-claude-skills](https://github.com/Chat2AnyLLM/awesome-claude-skills) | **最大规模索引**，收录 51,000+ skills，覆盖面极广 |

### Skills 库与工具包

| 仓库 | 说明 |
|------|------|
| [alirezarezvani/claude-skills](https://github.com/alirezarezvani/claude-skills) | 248 个生产级 skills，兼容 11 种 AI 编码工具（Cursor、Codex、Gemini CLI 等），覆盖工程、营销、合规等 |
| [qdhenry/Claude-Command-Suite](https://github.com/qdhenry/Claude-Command-Suite) | 216+ slash commands、12 skills、54 agents 的综合开发工具包 |
| [jeffallan/claude-skills](https://github.com/jeffallan/claude-skills) | **Fullstack Dev Skills**：65 个全栈开发专项 skills + 9 个项目管理工作流命令 |
| [davila7/claude-code-templates](https://github.com/davila7/claude-code-templates) | Claude Code 模板合集：slash commands、hooks、agents，附带使用分析看板 |

### Skills 市场

| 仓库 | 说明 |
|------|------|
| [aiskillstore/marketplace](https://github.com/aiskillstore/marketplace) | AI Skills 官方市场，遵循 Agent Skills 规范，支持发现、安装和管理 |
| [terrylica/cc-skills](https://github.com/terrylica/cc-skills) | Claude Code Skills 市场：DevOps、ClickHouse、语义版本化等专项 skills |
| [netresearch/claude-code-marketplace](https://github.com/netresearch/claude-code-marketplace) | Agent Skills 策展集合，覆盖 TYPO3、PHP、Go、Docker、Jira、安全、文档等 |

### 相关网站

| 网站 | 说明 |
|------|------|
| [aitmpl.com](https://aitmpl.com) | 在线浏览和发现 Claude Code skills 的网站 |

---

## 实用 Skills 推荐

以下从功能覆盖面、社区活跃度、适用场景广度三个维度，精选出 20 个最实用的 skills/工具集，适合 Agent 开发方向的研究者和工程人员使用。

### 1. Superpowers
- [GitHub](https://github.com/obra/superpowers)
- **一句话**：面向 coding agents 的核心工程能力框架，将 brainstorming、planning、TDD、debugging、review 模块化为可组合技能
- **推荐理由**：不只是提示词集合，而是一套完整的 agent 工程方法论，适合研究"如何让 agent 稳定完成复杂工程任务"

### 2. Claude Scientific Skills
- [GitHub](https://github.com/K-Dense-AI/claude-scientific-skills)
- **一句话**：面向科研、数据分析、金融、工程计算等场景的即用型 skills 套件
- **推荐理由**：对科研方向的硕士尤其友好，覆盖论文写作、数据分析、实验管理等场景

### 3. Context Engineering Kit
- [GitHub](https://github.com/NeoLabHQ/context-engineering-kit)
- **一句话**：精选的高级上下文工程技术集合，以最小 token 开销提升 agent 输出质量
- **推荐理由**：Context Engineering 是当前 Agent 研究的热点方向，该仓库提供了可直接实践的技术方案

### 4. AgentSys
- [GitHub](https://github.com/avifenesh/agentsys)
- **一句话**：Claude 的工作流自动化系统，支持插件、子 agent、skills，覆盖从任务到生产的全流程
- **推荐理由**：展示了多 agent 编排的完整工程实践，包含 drift detection、多 agent code review 等高级特性

### 5. Trail of Bits Security Skills
- [GitHub](https://github.com/trailofbits/skills)
- **一句话**：十余个安全审计专项 skills，集成 CodeQL、Semgrep、变体分析、差异代码审查等
- **推荐理由**：来自顶级安全公司 Trail of Bits，是学习"Agent 驱动安全审计"的最佳实践案例

### 6. Claude Code Agents（E2E 工作流）
- [GitHub](https://github.com/undeadlist/claude-code-agents)
- **一句话**：面向独立开发者的端到端开发工作流，包含并行审计、自动修复循环、浏览器 QA、防失控协议
- **推荐理由**：展示了子 agent 编排和自动化质量保障的完整方案，适合研究 agent 工作流设计

### 7. Everything Claude Code
- [GitHub](https://github.com/affaan-m/everything-claude-code)
- **一句话**：涵盖 Claude Code 核心工程领域几乎所有方面的资源集合，每个条目都有独立参考价值
- **推荐理由**：一站式资源库，适合快速了解 Claude Code 的全部能力边界

### 8. Fullstack Dev Skills
- [GitHub](https://github.com/jeffallan/claude-skills)
- **一句话**：65 个全栈开发专项 skills，覆盖前后端、数据库、DevOps，附带 Jira/Confluence 集成命令
- **推荐理由**：全栈开发的"瑞士军刀"，数量多且每个 skill 都经过实际项目验证

### 9. cc-devops-skills
- [GitHub](https://github.com/akin-ozer/cc-devops-skills)
- **一句话**：极其详细的 DevOps skills，支持多云平台 IaC 代码生成、验证、部署
- **推荐理由**：Agent + DevOps 的深度结合案例，展示了 agent 在基础设施自动化中的潜力

### 10. Compound Engineering Plugin
- [GitHub](https://github.com/EveryInc/compound-engineering-plugin)
- **一句话**：将过往错误转化为未来改进经验的 agent/skills/commands 组合
- **推荐理由**：体现了"从失败中学习"的 agent 自改进机制，与 Agent 研究中的 self-reflection 方向高度相关

### 11. Claude Codex Settings
- [GitHub](https://github.com/fcakyon/claude-codex-settings)
- **一句话**：组织良好的插件集合，覆盖 GitHub、Azure、MongoDB、Tavily、Playwright 等主流云服务和工具
- **推荐理由**：多平台兼容，展示了 skills 如何作为 agent 与外部服务交互的桥梁

### 12. TÂCHES Claude Code Resources
- [GitHub](https://github.com/glittercowboy/taches-cc-resources)
- **一句话**：均衡的子 agent、skills 和 commands 集合，聚焦"元技能"如 skill-auditor 和 hook 创建
- **推荐理由**：提供了关于 skill 本身质量评估和管理的工具，适合研究 skill 生态治理

### 13. Claude Code System Prompts
- [GitHub](https://github.com/Piebald-AI/claude-code-system-prompts)
- **一句话**：完整收录 Claude Code 的 system prompt、子 agent prompt、工具 prompt，按版本持续更新
- **推荐理由**：**必读资源**——理解 Claude Code 内部工作机制的最佳途径，对 Agent 系统设计研究极具参考价值

### 14. Claude Code Pro
- [GitHub](https://github.com/maxritter/claude-codepro)
- **一句话**：专业开发环境配置，包含 spec-driven workflow、TDD 强制执行、跨会话记忆、语义搜索、质量 hooks
- **推荐理由**：展示了如何通过 hooks + skills 构建完整的 agent 开发规范体系

### 15. Agentic Workflow Patterns
- [GitHub](https://github.com/ThibautMelen/agentic-workflow-patterns)
- **一句话**：用 Mermaid 图梳理的 agentic 模式集合：子 agent 编排、渐进式 skills、并行工具调用、Master-Clone 架构等
- **推荐理由**：以可视化方式呈现 agent 设计模式，非常适合教学和论文写作参考

### 16. Claude Code Infrastructure Showcase
- [GitHub](https://github.com/diet103/claude-code-infrastructure-showcase)
- **一句话**：利用 hooks 让 Claude 根据上下文智能选择和激活合适 skills 的创新技术
- **推荐理由**：展示了 agent skill 路由和动态选择的前沿实践，与"agent 自主决策"研究方向直接相关

### 17. Book Factory
- [GitHub](https://github.com/robertguss/claude-skills)
- **一句话**：复刻传统出版流程的 skills 流水线，支持从大纲到成书的非虚构类书籍自动化创作
- **推荐理由**：长文本生成和流程编排的绝佳案例，展示了 agent 处理复杂多步骤任务的工程化方案

### 18. Codebase to Course
- [GitHub](https://github.com/zarazhangrui/codebase-to-course)
- **一句话**：将任意代码库转化为交互式单页 HTML 课程，面向非技术用户
- **推荐理由**：agent 在教育领域应用的优秀案例，展示了自动内容生成的实用价值

### 19. Web Assets Generator
- [GitHub](https://github.com/alonw0/web-asset-generator)
- **一句话**：在 Claude Code 中直接生成 web 资源：favicon、PWA 图标、Open Graph 社交媒体图片
- **推荐理由**：小而美的实用工具，展示了 agent 在设计领域的轻量级应用

### 20. Claude Code PM
- [GitHub](https://github.com/automazeio/ccpm)
- **一句话**：完整的项目管理工作流，包含专门化 agents 和 slash commands，覆盖需求到交付的全流程
- **推荐理由**：Agent 驱动项目管理的综合方案，展示了 agent 在软件工程管理中的落地实践

---

## 常用 Slash Commands 速查

以下是在各类项目中高频出现的 slash commands，可作为日常开发的快速参考：

### 版本控制
| 命令 | 说明 | 来源 |
|------|------|------|
| `/commit` | 使用 Conventional Commit 格式（含 emoji）创建提交 | [evmts/tevm-monorepo](https://github.com/evmts/tevm-monorepo) |
| `/create-pr` | 完整 PR 工作流：创建分支、提交、格式化、提交 PR | [toyamarinyon/giselle](https://github.com/toyamarinyon/giselle) |
| `/fix-issue` | 分析 GitHub Issue 并实现修复，包含测试验证 | [metabase/metabase](https://github.com/metabase/metabase) |
| `/fix-pr` | 获取并修复 PR 中的未解决 review 意见 | [metabase/metabase](https://github.com/metabase/metabase) |

### 开发流程
| 命令 | 说明 | 来源 |
|------|------|------|
| `/tdd` | 测试驱动开发引导：Red-Green-Refactor 纪律 + git 工作流 | [zscott/pane](https://github.com/zscott/pane) |
| `/check` | 全面的代码质量和安全检查 | [rygwdn/slack-tools](https://github.com/rygwdn/slack-tools) |
| `/optimize` | 分析代码性能瓶颈并提出优化建议 | [to4iki/ai-project-rules](https://github.com/to4iki/ai-project-rules) |
| `/context-prime` | 为 Claude 加载项目上下文：仓库结构、开发环境、协作参数 | [elizaOS/elizaos.github.io](https://github.com/elizaOS/elizaos.github.io) |

### 文档与规划
| 命令 | 说明 | 来源 |
|------|------|------|
| `/docs` | 根据代码结构自动生成项目文档 | [slunsford/coffee-analytics](https://github.com/slunsford/coffee-analytics) |
| `/create-plan` | 生成完整的产品需求文档（PRD） | [hesreallyhim/inkverse-fork](https://github.com/hesreallyhim/inkverse-fork) |
| `/prime` | 设置初始项目上下文（查看目录结构和关键文件） | [yzyydev/AI-Engineering-Structure](https://github.com/yzyydev/AI-Engineering-Structure) |

---

## 相关工作流与方法论

| 项目 | 说明 |
|------|------|
| [RIPER Workflow](https://github.com/tony/claude-code-riper-5) | Research → Innovate → Plan → Execute → Review 五阶段工作流，含子 agent 和分支感知记忆 |
| [AB Method](https://github.com/ayoubben18/ab-method) | 需求驱动的工作流，将大问题拆解为聚焦的增量任务，通过子 agent 执行 |
| [Ralph Wiggum](https://github.com/frankbria/ralph-claude-code) | 自主 AI 开发循环框架，含退出检测、速率限制、熔断器、安全护栏 |
| [Claude Code System Prompts](https://github.com/Piebald-AI/claude-code-system-prompts) | Claude Code 完整 system prompt 收录，按版本更新 |

## 后续可补充内容
- Skill 设计模式与最佳实践
- 不同任务场景下的 agent 工作流对比
- Agent 自改进机制（self-reflection、error learning）相关 skills
- 多 Agent 编排框架的 skills 生态整合


## 本页建议覆盖

- skill 设计案例
- workflow 组织方式
- 常见 prompt pattern
- 人机协作实践经验

## 推荐组织方式

### 1. 可复用 skill

整理可迁移、可复用的 skill 结构与设计思路。

### 2. 工作流与协作方式

整理适合科研与工程任务的任务拆解、执行和复盘方式。

### 3. 实践建议

记录在真实使用中有效的 prompt、约束与习惯。

## 后续可补充内容

- 高质量开源 skills 索引
- workflow 示例
- 不同任务场景下的实践建议
