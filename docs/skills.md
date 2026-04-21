# Skills

本页用于整理与 AI coding（Vibe Coding）/ Coding Agent 相关的 skill、workflow、prompt 模板和实践经验。

## 当前收录

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
