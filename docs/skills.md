# Skills

本页用于整理与 AI coding（Vibe Coding）/ Coding Agent 相关的 skill、workflow、prompt 模板和实践经验。

常用 prompt 模板已单独整理到 [prompts.md](prompts.md)。本页重点保留 skills、workflow 资源和方法论索引。

## 实用 Skills 推荐
以下从功能覆盖面、社区活跃度、适用场景广度三个维度，精选出 20 个最实用的 skills/工具集，适合 Agent 开发方向的研究者和工程人员使用。

### 1. Skill Creator

- `skill-creator`
- 来源：本地预装系统技能

Skill Creator 是一个用于创建和更新 skills 的指导型技能，重点在于帮助 agent 产出结构清晰、触发条件明确、上下文成本可控的高质量 skill。

它强调 skill 应该保持精简，把核心流程写进 `SKILL.md`，把变体细节、参考资料、脚本和资产分层管理，适合用来研究“如何系统化沉淀 agent 能力”。

在不同 agent 平台中，这类技能通常通过“显式调用技能名”或在任务意图中明确表达“创建/更新一个 skill”来触发。例如在 Claude Code 中通常通过 `Skill` 工具加载；在 Codex 环境中则通常由系统内置的 skills 发现与触发机制根据用户请求匹配加载。

### 2. Superpowers

- [Superpowers](https://github.com/obra/superpowers)

Superpowers 是一个面向 coding agents 的 skills 框架和开发方法论，核心思想不是”给 agent 多几个提示词”，而是把 brainstorming、planning、TDD、debugging、review 这些流程模块化为可组合技能。

如果实验室后续想研究”如何把 Coding Agent 从能写代码，提升到更稳定地完成工程任务”，Superpowers 很值得跟踪。

### 3. Antigravity Awesome Skills
来源：GitHub 开源项目 https://github.com/sickn33/antigravity-awesome-skills
目前规模最大、生态最完善的可安装式 Coding Agent 技能库，v9.11.0 版本收录 1397 + 社区验证的结构化技能，获 32k+ GitHub 星标。它将零散提示词标准化为统一SKILL.md格式，提供角色化技能包和端到端工程工作流，一键适配 Claude Code、Cursor、Copilot 等主流工具，是研究跨平台技能标准化与 Agent 工程化能力沉淀的代表性样本。

### 4. Anthropic Skills 中的办公 Skills

[Anthropic Skills](https://github.com/anthropics/skills) 是 Anthropic 官方发布的开源 skill 库，涵盖多个实用领域。其中办公方向提供了四个 skill：

#### docx — Word 文档

处理 `.docx` 文件的一切需求。既能**创建**包含目录、多级标题、页眉页脚、表格、图片、超链接、脚注、多栏布局的新文档，也能**编辑**已有文档（通过解包 XML 进行精细修改，支持追踪修改和批注）。适用场景包括报告、备忘录、信函、合同、模板等任何以 Word 文件为最终交付物的任务。底层使用 JavaScript 的 `docx` 库生成新文档，使用 `pandoc` 提取内容。

> 触发条件：用户提到"Word 文档"、".docx"、需要带格式的专业文档（目录、页码、信头等），或要求输出报告、备忘录、信函、模板之类的 Word 文件。

#### pdf — PDF 文档

覆盖 PDF 文件处理的全部场景：**提取**文本与表格内容、**合并/拆分** PDF、**旋转**页面、**添加水印**、**加密/解密**、**提取图片**、对扫描件做 **OCR**、**填写 PDF 表单**，以及从零**创建**排版精美的 PDF 报告。底层综合使用 `pypdf`、`pdfplumber`、`reportlab` 等 Python 库，以及 `qpdf`、`pdftk`、`pytesseract` 等命令行工具。

> 触发条件：用户提到任何 `.pdf` 文件，或要求产出 PDF 格式的文档。

#### pptx — PowerPoint 演示文稿

用于创建和编辑 `.pptx` 演示文稿。既可基于现有模板修改，也可从零开始用 `pptxgenjs` 构建。该 skill 内置完整的**设计规范**：提供多套配色方案（不默认蓝色）、字体搭配建议、每张幻灯片的布局思路（双栏、图标+文字行、网格卡片等），以及明确的常见错误清单（禁用纯文字幻灯片、禁用标题下划线装饰线等）。完成后强制执行**视觉 QA 流程**——将幻灯片渲染为图片，交由子 agent 检查元素重叠、文字溢出、对比度不足等问题，直到全面通过才算完成。

> 触发条件：用户提到"deck"、"幻灯片"、"演示文稿"，或涉及任何 `.pptx` 文件。

#### xlsx — Excel 电子表格

处理 `.xlsx`、`.xlsm`、`.csv`、`.tsv` 等表格文件：**新建**带公式和格式的电子表格、**编辑**已有文件（添加列、修改公式、调整格式、制作图表）、**清洗**混乱的表格数据。核心原则是**始终使用 Excel 公式而非在 Python 中硬编码计算值**，确保表格在数据更新后能自动重算。内置金融建模规范（蓝色=输入值、黑色=公式、绿色=跨表引用；货币/百分比/倍数的格式标准；假设单元格与公式分离）。底层使用 `pandas` 做数据分析、`openpyxl` 做格式与公式操作，并通过 LibreOffice 自动重算公式并检验 `#REF!`、`#DIV/0!` 等错误。

> 触发条件：用户提到 `.xlsx`、`.csv` 等表格文件，或要求以电子表格为最终输出（数据分析、财务模型、预算表等）。


### 5. Claude Scientific Skills
- [GitHub](https://github.com/K-Dense-AI/claude-scientific-skills)
- **一句话**：面向科研、数据分析、金融、工程计算等场景的即用型 skills 套件
- **推荐理由**：对科研方向的硕士尤其友好，覆盖论文写作、数据分析、实验管理等场景

### 6. Context Engineering Kit
- [GitHub](https://github.com/NeoLabHQ/context-engineering-kit)
- **一句话**：精选的高级上下文工程技术集合，以最小 token 开销提升 agent 输出质量
- **推荐理由**：Context Engineering 是当前 Agent 研究的热点方向，该仓库提供了可直接实践的技术方案

### 7. Trail of Bits Security Skills
- [GitHub](https://github.com/trailofbits/skills)
- **一句话**：十余个安全审计专项 skills，集成 CodeQL、Semgrep、变体分析、差异代码审查等
- **推荐理由**：来自顶级安全公司 Trail of Bits，是学习"Agent 驱动安全审计"的最佳实践案例

### 8. Everything Claude Code
- [GitHub](https://github.com/affaan-m/everything-claude-code)
- **一句话**：涵盖 Claude Code 核心工程领域几乎所有方面的资源集合，每个条目都有独立参考价值
- **推荐理由**：一站式资源库，适合快速了解 Claude Code 的全部能力边界

### 9. Fullstack Dev Skills
- [GitHub](https://github.com/jeffallan/claude-skills)
- **一句话**：65 个全栈开发专项 skills，覆盖前后端、数据库、DevOps，附带 Jira/Confluence 集成命令
- **推荐理由**：全栈开发的"瑞士军刀"，数量多且每个 skill 都经过实际项目验证

### 10. cc-devops-skills
- [GitHub](https://github.com/akin-ozer/cc-devops-skills)
- **一句话**：极其详细的 DevOps skills，支持多云平台 IaC 代码生成、验证、部署
- **推荐理由**：Agent + DevOps 的深度结合案例，展示了 agent 在基础设施自动化中的潜力


### 11. Claude Code System Prompts
- [GitHub](https://github.com/Piebald-AI/claude-code-system-prompts)
- **一句话**：完整收录 Claude Code 的 system prompt、子 agent prompt、工具 prompt，按版本持续更新
- **推荐理由**：**必读资源**——理解 Claude Code 内部工作机制的最佳途径，对 Agent 系统设计研究极具参考价值

### 12. Claude Code Pro
- [GitHub](https://github.com/maxritter/claude-codepro)
- **一句话**：专业开发环境配置，包含 spec-driven workflow、TDD 强制执行、跨会话记忆、语义搜索、质量 hooks
- **推荐理由**：展示了如何通过 hooks + skills 构建完整的 agent 开发规范体系

### 13. Agentic Workflow Patterns
- [GitHub](https://github.com/ThibautMelen/agentic-workflow-patterns)
- **一句话**：用 Mermaid 图梳理的 agentic 模式集合：子 agent 编排、渐进式 skills、并行工具调用、Master-Clone 架构等
- **推荐理由**：以可视化方式呈现 agent 设计模式，非常适合教学和论文写作参考

### 14. ai-pair

- [GitHub](https://github.com/axtonliu/ai-pair)
- **一句话**：将 Claude、GPT、Gemini 编排为”一创作、两审查”的异构 AI 团队，把模型差异转化为互补视角。
- **推荐理由**：展示了如何通过结构化角色分工，利用多个模型进行代码或内容的协同审查与优化，适合研究”Agent 编排”和”多模型协作”的直接实践样本。

### 15. Karpathy Guidelines

- [GitHub](https://github.com/forrestchang/andrej-karpathy-skills)
- **一句话**：Karpathy 总结的 AI coding 指南，强调从人类写代码转向人类 review 代码的范式转变。
- **推荐理由**：提出了”人类从作者变为编辑”的核心观点，以及一系列实用的 AI coding 工作原则（如从小处开始、频繁提交、保持简单等），是理解 AI 辅助编程方法论的重要参考。



---
以下仓库是 Claude Code Skills 生态中最活跃、内容最丰富的资源索引：

### 综合 Awesome 列表

| 仓库 | 说明 |
|------|------|
| [hesreallyhim/awesome-claude-code](https://github.com/hesreallyhim/awesome-claude-code) | **最全面的精选列表**，涵盖 skills、agents、plugins、hooks、slash-commands、agent orchestrators 等，分类清晰、质量把控严格 |
| [travisvn/awesome-claude-skills](https://github.com/travisvn/awesome-claude-skills) | 精选 Claude Skills 和工具列表，聚焦 Claude Code 的自定义工作流 |
| [ComposioHQ/awesome-claude-skills](https://github.com/ComposioHQ/awesome-claude-skills) | 按场景分类的实用 skills 列表：文档处理、开发工具、数据分析、商业与营销等 |

### Skills 库与工具包

| 仓库 | 说明 |
|------|------|
| [alirezarezvani/claude-skills](https://github.com/alirezarezvani/claude-skills) | 248 个生产级 skills，兼容 11 种 AI 编码工具（Cursor、Codex、Gemini CLI 等），覆盖工程、营销、合规等 |
| [qdhenry/Claude-Command-Suite](https://github.com/qdhenry/Claude-Command-Suite) | 216+ slash commands、12 skills、54 agents 的综合开发工具包 |

### Skills 市场

| 仓库 | 说明 |
|------|------|
| [aiskillstore/marketplace](https://github.com/aiskillstore/marketplace) | AI Skills 官方市场，遵循 Agent Skills 规范，支持发现、安装和管理 |
| [terrylica/cc-skills](https://github.com/terrylica/cc-skills) | Claude Code Skills 市场：DevOps、ClickHouse、语义版本化等专项 skills |

### 相关网站

| 网站 | 说明 |
|------|------|
| [aitmpl.com](https://aitmpl.com) | 在线浏览和发现 Claude Code skills 的网站 |

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
