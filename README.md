# AI Coding

面向实验室学习与科研需求的 AI coding（Vibe Coding）/ Coding Agent 资源归集项目。

## 项目简介

AICoding 是一个公开维护、实验室优先使用的资源索引项目，聚焦 AI coding（Vibe Coding）与 Coding Agent 方向，系统整理论文、工具、网站、技能、评测基准与开源项目，帮助实验室成员更高效地学习、阅读、选题、实验与研究。

本项目当前主要服务于实验室师生的学习与科研需求，同时以公开仓库的方式持续积累和完善，希望逐步形成一个结构清晰、可长期维护的方向知识入口。

## 项目目标

- 帮助新成员快速入门 AI coding（Vibe Coding）/ Coding Agent
- 支持实验室成员系统追踪核心论文、工具与 benchmark
- 服务研究选题、论文阅读、实验设计与工程实现
- 沉淀实验室共享知识与可复用资源

## 面向对象

- 对 AI coding（Vibe Coding）/ Coding Agent 感兴趣的人员
- 开展相关研究的研究生、本科生和教师
- 需要查找工具、论文、benchmark 和开源项目的研究者
- 对该方向感兴趣的工程实践者

## 内容范围

- 工具与开发环境
- skills / workflow / 实践方法
- 热点项目与专题页
- 网站、课程与持续跟踪入口
- 入门资料与基础概念
- benchmark 与评测资源
- 核心论文与综述
- 开源项目与接入案例
- 研究问题与选题方向

## 项目结构

```text
aicoding/
├── README.md
├── CONTRIBUTING.md
└── docs/
    ├── tools.md
    ├── skills.md
    ├── prompts.md
    ├── websites.md
    ├── getting-started.md
    ├── benchmarks.md
    ├── papers.md
    ├── research-topics.md
    └── openclaw.md
```

## 内容导航

1. [Getting Started](docs/getting-started.md)
2. [Websites](docs/websites.md)
3. [Tools](docs/tools.md)
4. [Skills](docs/skills.md)
5. [Prompts](docs/prompts.md)
6. [Papers](docs/papers.md)
7. [Benchmarks](docs/benchmarks.md)
8. [Research Topics](docs/research-topics.md)

## 推荐使用方式

### 对实验室新成员

建议按以下顺序使用：

1. 先浏览 [tools.md](docs/tools.md)、[skills.md](docs/skills.md) 和 [prompts.md](docs/prompts.md)，建立工具与实践感知
2. 再阅读 [getting-started.md](docs/getting-started.md)，建立概念和入门路径
3. 然后了解 [benchmarks.md](docs/benchmarks.md) 和 [papers.md](docs/papers.md)
4. 最后结合 [research-topics.md](docs/research-topics.md) 思考潜在兴趣点
5. 如果准备参与系统开发型项目（如 [half](https://github.com/keting/half)），建议先阅读 [GitHub 协作规范](docs/github-collaboration-workflow.md)，熟悉 `issue`、`branch`、`PR` 的协作方式。

### 对 AI Coding 爱好者（包括非技术人员）

如果你没有编程背景，但对"用 AI 写代码"这件事感兴趣，借助AI能力也完全可以进入这个领域：

1. 先阅读 [getting-started.md](docs/getting-started.md)，理解 AI coding、Vibe Coding 等核心概念
2. 浏览 [websites.md](docs/websites.md)，了解主流模型入口和学习课程
3. 尝试 [tools.md](docs/tools.md) 中的直接工具和辅助工具
4. （可选）感兴趣时再看 [papers.md](docs/papers.md) 中的综述论文，建立更完整的认知

### 对工程实践导向的同学

建议重点使用：

- [tools.md](docs/tools.md)
- [skills.md](docs/skills.md)
- [prompts.md](docs/prompts.md)
- [websites.md](docs/websites.md)
- [benchmarks.md](docs/benchmarks.md)

### 对正在开展研究的同学

建议重点使用：

- [tools.md](docs/tools.md)：追踪可用工具
- [websites.md](docs/websites.md)：快速找到课程、论文入口和模型厂商入口
- [benchmarks.md](docs/benchmarks.md)：参考实验设计
- [papers.md](docs/papers.md)：建立论文地图
- [research-topics.md](docs/research-topics.md)：辅助选题与收敛方向

## 项目原则

- 优先服务实验室真实学习与科研需求
- 不追求资源数量最大化，优先保证质量
- 强调结构化整理，而不是简单堆链接
- 优先保留对学习、研究和实践真正有帮助的内容
- 鼓励长期维护和逐步扩展

## 收录标准

一般优先收录以下类型的内容：

- 在社区或实践中影响较大的工具和系统
- 对学习路径、研究设计或工程实践有明确帮助的资源
- 方向代表性强的论文与综述
- 具有较高参考价值的 benchmark
- 能够帮助实验室成员建立系统理解的内容

## 后续计划

- 更清晰的工程实践入口
- 更完整的 CLI 工具与 workflow 索引
- 更系统的 benchmark 地图
- 更完整的论文分层索引
- 更贴近实验室研究需求的选题问题库

## 如何贡献

欢迎实验室成员和外部读者共同完善本项目。提交方式和建议可参考 [CONTRIBUTING.md](CONTRIBUTING.md)。

**注意：一个 PR 只提交一类资源或一项修改，避免将多个不相关内容（如新增工具、修复链接、更新文档）混在同一个 PR 中。
遵循单一职责原则，可让审核更高效、仓库历史更清晰，感谢你的贡献！**

## 项目定位说明

本项目当前并不追求做成“全网最全资源库”，而是优先做成一个公开维护、实验室优先使用的 AI coding（Vibe Coding）/ Coding Agent 学习与科研资源索引库。

在此基础上，随着内容积累与使用反馈增加，再逐步扩展其开放性与公共价值。

## License

本项目采用 [CC BY-SA 4.0](LICENSE) 协议。
