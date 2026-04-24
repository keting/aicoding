# GitHub 协作规范

本规范面向实验室多人协作场景：项目负责人或核心成员负责拆解任务、分配工作和进行 PR review，项目成员负责认领任务、开发实现和提交 PR。

目标不是增加流程负担，而是让任务边界、责任归属、开发过程和验收标准足够清晰，避免重复劳动和无效 review。

## 适用范围

本文优先适用于实验室维护的公开协作仓库，如 `half`。这类仓库应严格执行本文的最小规则和默认工作流；标签体系以仓库现状为准，不为了对齐文档再造体系。

对于私有但多人协作的仓库，可以沿用同样流程，但 review 严格度和标签体系可以适度简化。

对于个人学习仓库或临时实验仓库，本文作为参考即可，不强制要求每一步都执行。

## 最小规则

如果希望流程尽量简单，至少强制执行以下六条：

1. 没有 `issue` 不开工；如果还不确定是否值得做，先开 `discussion`
2. 一个 `issue` 只指定一个主负责人
3. `branch` 必须带 `issue` 编号
4. `PR` 必须关联 `issue`
5. 一个 `PR` 只解决一个明确问题
6. `CI` 通过后才进入 review 或合并；新仓库若暂未建立 CI，先按口头约束执行此条，有余力后补齐 CI 配置并结合 branch protection 机械化

自动化工具的 PR 例外。`Dependabot` 或批量依赖升级 PR 不强制满足“一个 PR 只解决一个明确问题”，但仍应满足可审阅和可回滚。

除 `Dependabot` 等自动化 PR 已单独说明外，外部贡献者 PR 和纯文档 typo 修复的豁免条件见后文“规则的例外情形”。

这六条通常已经足够支撑一个 5 到 10 人的小团队稳定协作。

## 默认工作流

建议默认采用以下流程：

1. 项目负责人整理 backlog
2. 不确定是否值得做的想法先放到 `Discussions`
3. 确认要做的事项创建为 `issue`
4. 给 `issue` 加上类型和模块标签，并写清完成标准
5. 指定一名主负责人
6. 项目成员认领后，从对应 `issue` 创建 `branch`
7. 项目成员提交 `PR` 并关联 `issue`
8. `CI` 通过后，项目负责人在 3 个工作日内给出首轮 review
9. 默认使用 `Squash and merge` 合并
10. 合并后关闭 `issue`；未完成部分继续拆新 issue

## 基本原则

- 以 `issue` 为中心管理任务
- 以 `branch` 为载体承接开发
- 以 `pull request` 作为审核与合并入口
- `issue` 负责定义目标和边界，`PR` 负责提交实现和验证
- 讨论未成形想法时优先使用 `Discussions`
- 外部贡献者的小型 PR 可以先 review，再决定是否补开 `issue`

## 三个对象的分工

### Issue

`issue` 用来描述“要做什么”，适合承载以下内容：

- 背景与目标
- 工作范围
- 完成标准
- 主负责人
- 讨论记录
- 当前状态

适用场景：

- 新功能
- Bug 修复
- 文档补充
- 工具链改进
- 技术债处理
- 调研任务

### Branch

`branch` 用来描述“具体怎么改代码”。只有在任务已经被认领并开始执行时才创建 branch。

禁止为尚未开始的想法提前创建 branch。

### Pull Request

`pull request` 用来描述“本次提交解决了什么问题，以及是否可以合并”。

PR 应承担以下职责：

- 关联对应 issue
- 说明改动内容
- 说明验证方式
- 接收 review 意见
- 作为合并记录保留

## Discussions 的使用边界

以下内容优先放在 `Discussions`，不要直接进入 `issue`：

- 还不确定要不要做的想法
- 方向性讨论
- 设计方案对比
- 需要先征求意见的改动

当讨论已经收敛到“值得做”且边界较清楚时，再转成 `issue` 执行。

## 推荐流程说明

### 1. 项目负责人整理任务并创建 issue

每一个明确工作项都先建成 issue。issue 不要求一开始就写得很长，但至少要让项目成员知道：

- 为什么做
- 做到哪里算完成
- 有没有边界限制

### 2. 项目成员认领 issue

认领后再开始开发。多人协作时，优先避免一个 issue 被多人同时实现。

### 3. 项目成员从 issue 创建 branch

branch 从主分支拉出，并在命名中带上 issue 编号，便于追踪。

### 4. 项目成员开发并提交 PR

PR 必须关联 issue，并说明：

- 本次改了什么
- 没改什么
- 如何验证
- 是否还有后续工作

### 5. 项目负责人进行 review

review 重点放在：

- 是否完成 issue 目标
- 是否超出本次任务范围
- 是否引入明显风险或回归
- 测试和说明是否足够

默认约定：项目负责人在 3 个工作日内给出首轮 review；如果暂时无法 review，也应简短回复当前状态，避免项目成员长时间等待。

### 6. 合并与关闭

默认使用 `Squash and merge`，保持 `main` 历史线性、便于回溯和教学管理。

PR 合并后关闭对应 issue；如果 issue 尚未完全完成，则保留 issue 并继续拆分后续子任务。

## 推荐对应关系

最常见的关系如下：

- 中小任务：`1 issue -> 1 branch -> 1 PR`
- 大任务：`1 epic issue -> 多个子 issue -> 多个 branch -> 多个 PR`
- 调研任务：`1 research issue -> 讨论后决定是否继续拆分实现`

这里的 `epic issue` 不是 GitHub 原生对象，而是一个带任务清单的普通 issue。推荐做法是：

- 在父 issue 中列出子任务清单
- 使用复选框和子 issue 链接追踪进度
- 如果使用 `- [ ] #<子 issue 号>` 的经典 task list 语法，需要手工勾选，GitHub 不会在子 issue 关闭后自动同步
- 如果使用 GitHub 的 `Sub-issues` 功能，子 issue 关闭后父 issue 进度会自动更新

如果任务较大，不要让项目成员在一个 branch 里一次性做完所有内容，应先拆成多个子 issue。

## 标签规范

如果你们当前仓库已经有既定标签体系，文档应服从仓库现状，不要再造第二套。

对 `half` 这类多模块仓库，建议默认采用“类型 + 模块”的标签结构。

### 类型标签

推荐使用带前缀的类型标签：

- `type:feature`
- `type:bug`
- `type:question`
- `type:maintenance`

`research` 类型任务如果需要单独标识，可以按仓库情况自行增加，但对 `half` 应优先服从现有标签集合，不为了文档再造体系。

如果某个仓库还没有完整覆盖这些标签，应以仓库现有标签为准，不要求为了文档强行补齐。

在 `half` 这类项目中，文档类改动通常归到 `area:docs`，而不是 `type:*`。类型标签优先表达任务性质，如 `bug`、`feature`、`question`、`maintenance`。

### 模块标签

对多模块项目，建议补充模块标签，至少覆盖：

- `area:backend`
- `area:frontend`
- `area:ci`
- `area:docs`
- `area:security`

这样在 `half`、`t0project` 这类项目里，任务能按责任域快速分流。

### 其他常用标签

- `status:needs-triage`
- `good first issue`

`good first issue` 需要保持 GitHub 官方约定的空格写法，便于被生态工具和聚合页识别。

优先级标签不是必需项。对于早期或单维护者阶段的仓库，可以不引入 `priority:*` 体系；当团队规模变大、并行任务增多时，再视情况增加。

## Issue 编写规范

每个 issue 建议包含以下字段：

### 标题

标题应直接说明任务，不写成模糊口号。

推荐：

- `支持论文页面按主题分类展示`
- `修复 README 中失效的 benchmark 链接`
- `调研 Codex 与 Claude Code 的 review 工作流差异`

不推荐：

- `优化一下`
- `改页面`
- `看看这个问题`

### 语言约定

建议统一如下：

- `issue` 标题和正文默认用中文，便于实验室内部沟通
- `branch` slug 用英文，便于命令行和工具兼容
- `PR` 标题可用英文短句，正文优先保证清晰

如果某个公开仓库面向更多外部贡献者，也可以统一改为英文，但同一个仓库内不要混用得过于随意。

### 正文最小模板

```md
## 负责人

使用 GitHub 右侧栏 Assignees 指定主负责人，不要只在正文里写名字。

## 背景

为什么要做这件事。

## 目标

这项任务希望达到什么结果。

## 范围

本次需要做什么，不需要做什么。

## 完成标准

- [ ] 条件 1
- [ ] 条件 2
- [ ] 条件 3

## 备注

补充资料、参考链接、限制条件。
```

调研类 issue 的完成标准应额外写清产出形式，例如：

- `docs/` 下的一份 Markdown
- 一条总结性 issue 评论
- 一篇 Discussion 总结帖

调研任务关闭前，至少应满足“产出已链接且项目负责人已确认”。

## Branch 命名规范

branch 应统一命名，便于快速理解来源和用途。

推荐格式：

```text
<type>/<issue-number>-<short-slug>
```

推荐示例：

- `feat/123-paper-topic-index`
- `fix/87-broken-readme-links`
- `docs/156-review-workflow-guide`
- `research/203-agent-eval-survey`
- `chore/91-ci-cleanup`
- `refactor/215-simplify-task-detector`

推荐类型：

- `feat`
- `fix`
- `docs`
- `research`
- `chore`
- `refactor`

命名要求：

- 必须带 issue 编号
- 使用简短英文 slug
- 不使用中文、空格和过长描述

## PR 规范

### PR 标题

推荐格式：

```text
<type>: <summary> (#<issue-number>)
```

示例：

- `feat: add topic index for papers (#123)`
- `fix: remove invalid links in README (#87)`

### 合并策略

默认使用 `Squash and merge`。

原因如下：

- 保持 `main` 历史线性
- 每个任务通常只留下一个主提交，便于回溯
- PR 标题和描述可以更自然地沉淀为提交记录

只有少数需要保留分支拓扑的场景，例如 release 分支回合，才考虑使用普通 merge commit。

### PR 正文最小模板

```md
## 关联 Issue

Closes #<issue-number>

## 改动内容

- 改动 1
- 改动 2

## 未包含内容

- 本 PR 不处理 xxx

## 验证方式

- [ ] 本地检查通过
- [ ] CI 已通过
- [ ] 相关文档已更新
- [ ] 截图或示例已补充（如需要）

## 备注

需要 reviewer 特别关注的点。
```

## 规则的例外情形

以下情形不要求严格套用“内部 issue-first”流程：

### 外部贡献者 PR

- 改动较小、意图清楚、差异不大：可以直接 review
- 改动较大、方向未定、边界不清：在 PR 下引导先开 issue 或 discussion

### 自动化工具 PR

- `Dependabot`、`Renovate` 等自动化工具产生的 PR 不强制要求关联 issue
- grouped updates 允许一个 PR 同时升级一组相关依赖
- review 重点放在变更日志、风险评估和 CI 结果

### 纯文档 typo 或格式修复

- 对实验室内部成员，这类改动仍建议优先关联 issue
- 如果改动极小且无需讨论，也可以直接发 PR，但标题应带 `docs:` 前缀，便于快速识别

## 任务拆分建议

### 适合单独建一个 issue 的任务

- 有独立目标和可验收结果
- 需要单独讨论
- 预计会产生单独 PR
- 可能需要分配给不同项目成员

### 不必单独建 issue 的情况

- 一个任务中的极小子步骤
- 修改时顺手处理的拼写或格式问题
- 不值得单独追踪的零碎调整

如果项目成员自己判断不确定，默认先建 issue，再由项目负责人决定是合并、关闭还是并入已有任务。

## 项目负责人的管理建议

项目负责人的重点不应是直接跟进每一行代码，而应重点管理以下内容：

- issue 是否定义清楚
- 是否有人认领
- PR 是否只解决一个问题
- review 意见是否被正确响应
- 合并前是否满足完成标准和 CI 要求

建议你固定做三件事：

1. 每周维护一次 backlog
2. 新任务先写 issue，再分配给项目成员
3. review 时优先看目标、边界、验证，不先陷入实现细节

如果仓库已经启用 branch protection，建议同时开启 `Require status checks to pass`，把“CI 通过后再 review/合并”从口头规则变成系统约束。

## 项目成员的执行要求

项目成员提交前应自查：

- 是否先认领了 issue
- branch 是否带 issue 编号
- PR 是否只对应一个主要任务
- PR 是否写清楚验证方式
- CI 是否已经通过
- 是否在 PR 中说明了未完成部分

PR 提交后，应主动在 PR 中请求 reviewer，不假设项目负责人一定会立刻看到通知。

## 可选增强项

当协作规模再增大时，可以逐步增加以下机制：

- GitHub `.github/ISSUE_TEMPLATE/` 文件
- GitHub `.github/pull_request_template.md` 文件
- CODEOWNERS
- GitHub Projects 看板
- 标签自动化

建议先把最小流程跑顺，再增加这些配置，不要一开始把流程做得过重。
