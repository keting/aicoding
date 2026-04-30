# Prompts

本页用于沉淀实验室在 AI coding、Coding Agent、科研协作和工程协作中反复使用的 prompt 模板。

目标不是收集越多越好，而是保留那些可以直接复用、适合教学传播、并且能稳定改善 agent 输出质量的提示词。

## 使用原则

- 优先收录真实项目中反复使用过的 prompt
- 每个 prompt 应说明适用场景、输入材料和期望输出
- prompt 应尽量任务边界清晰，避免只有笼统角色设定
- 对会影响代码、论文或项目决策的 prompt，应要求 agent 明确列出假设、风险和验证方式
- prompt 正文统一放在代码块中，便于在 GitHub 页面一键复制
- 所有需要替换的值必须集中放在 prompt 开头的变量区，正文只引用变量名
- 较长 prompt 放在独立文件中，本页只保留入口和使用说明

## Prompt 模板索引

| 模板 | 适用场景 | 链接 |
|---|---|---|
| PR Review | 实验室项目收到 PR 后，让 coding agent 先做一轮结构化审查，帮助 reviewer 更快发现风险、遗漏和需要人工确认的问题。 | [通用 PR Review Prompt 模板](prompt-templates/pr-review.md) |
| Issue 提案 | 在版本节点前对开源项目做系统化盘点，提出下一阶段适合直接创建的 issue 候选。 | [通用 Issue 提案 Prompt 模板](prompt-templates/issue-proposal.md) |
| 论文调研 | 生成月度论文调研报告，并同步更新论文索引。 | [PAPER_RESEARCH_PROMPT.md](monthly/PAPER_RESEARCH_PROMPT.md) |

## 后续计划补充的 Prompt

以下方向暂未收录成熟模板，欢迎实验室成员在使用过程中沉淀后补充：

- Issue 拆解：把模糊想法拆成可执行 issue、把大任务拆成多个子 issue
- 论文调研：除现有月报外的轻量级专题调研、单篇论文精读
- 代码实现前检查：建立仓库上下文、明确“不做什么”、识别需求歧义
- 文档整理：新增资源条目、合并重复条目、检查链接与导航一致性
