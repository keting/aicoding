# Getting Started

本页面向刚接触 AI coding（Vibe Coding）/ Coding Agent 方向的实验室成员，目标是帮助快速建立基础概念、阅读顺序和学习路径。

## 先建立的几个概念

### AI Coding

AI coding 泛指利用大语言模型（LLM）辅助软件开发的各类实践，包括代码生成、代码补全、代码审查、Bug 修复、测试生成等。它是一个总括性概念，涵盖了从简单的自动补全到端到端自主编程的整个频谱。

### Vibe Coding

Vibe Coding 由 Andrej Karpathy 在 2025 年 2 月提出，指的是一种”凭感觉编程”的方式——开发者用自然语言描述意图，AI 生成代码，开发者不逐行审查，而是根据运行结果决定是否接受。它强调的是人与 AI 的交互范式转变：从”人写代码”到”人描述、AI 写、人验收”。

### Coding Agent

Coding Agent 是指能够自主规划、执行多步骤软件工程任务的 AI 系统。与单次代码补全不同，Coding Agent 可以理解仓库上下文、调用工具（终端、浏览器、文件系统）、迭代调试，直到任务完成。典型代表包括 Claude Code、Codex、SWE-agent 等。

### 三者之间的关系

- **AI coding** 是最广泛的上位概念
- **Vibe Coding** 是 AI coding 中的一种交互范式，强调”人不需要完全理解生成代码”
- **Coding Agent** 是 AI coding 的技术实现路径之一，强调”AI 能自主完成多步骤工程任务”
- Vibe Coding 的体验往往依赖 Coding Agent 的能力，但两者关注点不同：前者关注人机交互方式，后者关注系统能力

### Harness Engineering

- [Harness Engineering](https://harness-engineering.ai/)

这个概念可以粗略理解为：相比单纯比较”哪个模型更强”，更关注如何把 agent 放进一个可控、可复现、可评估的工程 harness 里。对实验室来说，它很值得关注，因为很多真正拉开差距的地方往往不是模型本身，而是上下文组织、工具调用、权限策略、评测方式和工作流设计。

## 建议的第一轮入门路径

1. 先看 [tools.md](tools.md)，了解当前主流 CLI Coding Agents 和工程辅助工具。
2. 再看 [skills.md](skills.md)，理解为什么很多团队开始重视 workflow 和 skills。
3. 通过 [Anthropic Claude 101](https://anthropic.skilljar.com/claude-101) 建立基础使用感。
4. 对热点项目感兴趣时进入 [openclaw.md](openclaw.md)。
5. 再回到 [benchmarks.md](benchmarks.md) 和 [papers.md](papers.md)，把工程体验和研究问题连起来。

## 推荐组织方式

### 1. 基础概念

用简洁语言说明核心术语，避免一开始陷入过多实现细节。

### 2. 入门阅读路径

先综述，再工具，再 benchmark，再研究问题。

### 3. 实践起点

给出适合实验室新成员的最小实践入口，例如先体验哪些工具、先阅读哪些项目、先了解哪些典型任务。

## 后续可补充内容

- 面向实验室新成员的 1 周入门路径
- 推荐先读的综述与代表性论文
- 推荐先尝试的工具和公开资源页
