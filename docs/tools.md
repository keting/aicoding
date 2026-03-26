# Tools

本页用于整理 AI coding（Vibe Coding）/ Coding Agent 相关工具、开发环境和系统框架，服务于学习体验、实验搭建与工程实践。

## 当前优先关注

### 1. CLI Coding Agents

- [Claude Code](https://claude.com/product/claude-code)
  Anthropic 的终端式 coding agent，强调本地运行、权限确认、与 IDE 和工作流结合。
- [Codex](https://openai.com/codex/)
  OpenAI 的 AI coding partner，强调端到端完成工程任务，适合放在当前主流 Coding Agent 工具链里持续跟踪。
- [GitHub Copilot CLI](https://docs.github.com/en/copilot/how-tos/copilot-cli)
  GitHub 提供的命令行 Copilot 入口，适合和 GitHub 工作流、autopilot 模式、插件生态一起看。

### 2. 终端与工程环境辅助

- `tmux`
  对长期运行 agent、远程服务器开发、多会话协作非常实用。至少建议掌握：`tmux new -s <name>`、`tmux attach -t <name>`、`tmux ls`、`Ctrl-b d`、`tmux kill-session -t <name>`。

### 3. 远程与移动端协作

- [Happy Coder](https://happy.engineering/docs/)
  一个面向 Claude Code / Codex 等 AI coding agents 的移动端与远程控制工具，适合“离开工位后继续看 agent 在做什么”这类场景。

### 4. 热点项目专题

- [OpenClaw 专题页](openclaw.md)
  OpenClaw 最近热度较高，建议单独跟踪，不只把它当作普通工具条目处理。

## 推荐组织方式

### 1. 面向直接使用的工具

优先收录上手门槛低、可直接体验的 CLI 或桌面工具。

### 2. 面向研究与实验的框架

适合搭建原型、运行任务和开展对比实验的系统与框架。

### 3. 面向评测和分析的辅助工具

包括日志、追踪、评测、复现实验相关工具。

## 后续可补充内容

- 工具对比表
- 使用门槛与适用场景说明
- 与 benchmark 或论文的对应关系
