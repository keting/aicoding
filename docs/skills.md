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
