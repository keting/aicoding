# Tools

本页用于整理 AI coding（Vibe Coding）/ Coding Agent 相关工具、开发环境和支撑工具，服务于学习体验、实验搭建与工程实践。

## 分类原则

本页优先按“工具在工作流中的角色”来组织内容：

- 直接工具：可以直接借助大模型能力参与分析、编码、修改工程或执行开发任务。
- 辅助工具：不直接替用户完成任务，但为 AI coding 工作流提供提示词、会话管理、远程协作、模型接入等支撑能力。
- 科研工具：用于论文发现、阅读、管理和研究资料积累，服务实验室长期学习与选题。

## 直接工具

### 1. CLI Coding Agents

- [Claude Code](https://claude.com/product/claude-code)
  Anthropic 的终端式 coding agent，强调本地运行、权限确认、与 IDE 和工作流结合。
- [Codex](https://openai.com/codex/)
  OpenAI 的 AI coding partner，强调端到端完成工程任务，适合放在当前主流 Coding Agent 工具链里持续跟踪。
- [GitHub Copilot CLI](https://docs.github.com/en/copilot/how-tos/copilot-cli)
  GitHub 提供的命令行 Copilot 入口，适合和 GitHub 工作流、autopilot 模式、插件生态一起看。

### 2. 热门开源 Agent / 专题工具

- [OpenClaw 专题页](openclaw.md)
  OpenClaw 既可以被看作一个值得直接体验的开源 AI assistant / agent，也值得作为一个正在快速演化的热点项目持续跟踪，因此放在直接工具下面单独列出。

## 辅助工具

### 1. 终端与会话管理

- `tmux`
  对长期运行 agent、远程服务器开发、多会话协作非常实用。至少建议掌握：`tmux new -s <name>`、`tmux attach -t <name>`、`tmux ls`、`Ctrl-b d`、`tmux kill-session -t <name>`。

### 2. 远程与移动端协作

- [Happy Coder](https://happy.engineering/docs/)
  一个面向 Claude Code、Codex 等 AI coding agents 的移动端与远程控制工具，适合“离开工位后继续看 agent 在做什么”这类场景。

### 3. 模型接入与中转

- [Sub2API](https://github.com/Wei-Shaw/sub2api)
  一个面向订阅额度分发与 API Key 管理的 AI API gateway platform，强调多账户管理、鉴权计费、负载调度、并发控制和管理面板，适合作为 Claude Code、Codex、Gemini 等上层工具的模型接入层。
- [One API](https://github.com/songquanpeng/one-api)
  一个较有代表性的通用大模型聚合网关，强调通过 OpenAI 兼容接口统一接入多家模型服务，适合用来理解“模型聚合与统一 API 暴露”这一类系统。
- [One Hub](https://github.com/MartialBE/one-hub)
  一个基于 `one-api` 演化的增强分支，强调新的 UI、供应商管理、监控统计、价格更新和多供应商支持，适合关注面板与运维能力增强的读者继续跟踪。
- [Claude Relay Service](https://github.com/Wei-Shaw/claude-relay-service)
  一个面向 Claude 访问场景的专项 relay 服务，强调多账户管理、Claude API 中转与自建部署；其 README 中也提示新项目可优先关注 `sub2api` 这一代方案。

### 4. 提示词与内容辅助

- [PromptUp](https://promptup.net/)
  一个提示语收集与浏览网站，适合在需要快速参考 prompt 写法、任务模板和表达方式时作为辅助入口使用。

## 科研工具

### 1. 论文发现、阅读与管理

> 以下工具的详细说明见 [papers.md](papers.md) 的”论文入口工具”部分，此处仅做索引。

- [Zotero](https://www.zotero.org/) — 文献管理与引用
- [Hugging Face Papers](https://huggingface.co/papers) — 最新论文发现
- [alphaXiv](https://www.alphaxiv.org/) — 论文阅读与社区讨论

## 后续可补充内容

- 工具对比表
- 使用门槛与适用场景说明
- 与 benchmark 或论文的对应关系
