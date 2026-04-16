# Tools

本页用于整理 AI coding（Vibe Coding）/ Coding Agent 相关工具、开发环境和支撑工具，服务于学习体验、实验搭建与工程实践。

## 分类原则

本页优先按“工具在工作流中的角色”来组织内容：

- 核心工具：可以直接借助大模型能力参与分析、编码、修改工程或执行开发任务。
- 扩展工具：为 AI coding 工具提供记忆、知识管理等增强能力，扩展核心工具的能力边界。
- 辅助工具：不直接替用户完成任务，但为 AI coding 工作流提供提示词、会话管理、远程协作、模型接入等支撑能力。
- 科研工具：用于论文发现、阅读、管理和研究资料积累，服务实验室长期学习与选题。

## 核心工具

### 1. CLI Coding Agents

- [Claude Code](https://claude.com/product/claude-code)
  Anthropic 的终端式 coding agent，强调本地运行、权限确认、与 IDE 和工作流结合。
- [Codex](https://openai.com/codex/)
  OpenAI 的 AI coding partner，强调端到端完成工程任务，适合放在当前主流 Coding Agent 工具链里持续跟踪。
- [GitHub Copilot CLI](https://docs.github.com/en/copilot/how-tos/copilot-cli)
  GitHub 提供的命令行 Copilot 入口，适合和 GitHub 工作流、autopilot 模式、插件生态一起看。
  对学生/个人用户而言，GitHub Copilot Pro 的常见订阅价格约为 10 美元/月，覆盖 GPT 和 Claude 最新模型，每月可进行 300 次请求（单次对话内容token不计上限），性价比较高。
- [OpenCode](https://opencode.ai)
  一款开源的终端 AI 编码助手，支持在命令行中与 AI 对话完成代码编写、调试、重构等任务。兼容 OpenAI、Anthropic、Google 等多模型；提供 Plan（仅分析）和 Build（实际修改）双模式；可集成到 VS Code、Cursor 等 IDE，并支持 MCP 扩展。  
  
  GitHub 仓库：[sst/opencode](https://github.com/sst/opencode)

### 2. 热门开源 Agent / 专题工具

- [OpenClaw 专题页](openclaw.md)
  OpenClaw 既可以被看作一个值得直接体验的开源 AI assistant / agent，也值得作为一个正在快速演化的热点项目持续跟踪，因此放在直接工具下面单独列出。

### 3. IDE Coding Agents

- [Antigravity](https://antigravity.google/) Google 推出的智能体 IDE（Agentic IDE），基于 VS Code 分支构建，不仅支持绝大部分 VS Code 插件，且支持多智能体并行协作、内置浏览器自动化测试、Artifacts 交付物与录屏验证。内置 Gemini 3.1 Pro，Claude Sonnet 4.5，Claude Opus 4.6 等模型。仅需登录谷歌账号即可使用，额度每周刷新，适合中等强度的开发工作。

## 扩展工具

- [Mem0](https://github.com/mem0ai/mem0)
  为 AI agent 提供持久化记忆层，支持跨会话的上下文记忆管理，适合在 Coding Agent 工作流中保持项目理解的连续性。
- [Spec Kit](https://github.com/github/spec-kit)
  GitHub 开源的规范驱动开发（Spec-Driven Development）工具包，通过 `/specify`、`/plan`、`/tasks`、`/implement` 等命令，将模糊需求转化为结构化的规格文档和技术方案，再由 AI coding agents 落地为代码。强调“先文档后实现”，适合需要规范流程、多人协作或长期维护的项目。

## 辅助工具

### 1. 终端与会话管理

- `tmux`
  对长期运行 agent、远程服务器开发、多会话协作非常实用。至少建议掌握：`tmux new -s <name>`、`tmux attach -t <name>`、`tmux ls`、`Ctrl-b d`、`tmux kill-session -t <name>`。

### 2. 远程与移动端协作

- [Happy Coder](https://happy.engineering/docs/)
  一个面向 Claude Code、Codex 等 AI coding agents 的移动端与远程控制工具，适合“离开工位后继续看 agent 在做什么”这类场景。

### 3. 自建中转站

- [Sub2API](https://github.com/Wei-Shaw/sub2api)
  一个面向订阅额度分发与 API Key 管理的 AI API gateway platform，强调多账户管理、鉴权计费、负载调度、并发控制和管理面板，适合作为 Claude Code、Codex、Gemini 等上层工具的模型接入层。
- [One API](https://github.com/songquanpeng/one-api)
  一个较有代表性的通用大模型聚合网关，强调通过 OpenAI 兼容接口统一接入多家模型服务，适合用来理解“模型聚合与统一 API 暴露”这一类系统。
- [One Hub](https://github.com/MartialBE/one-hub)
  一个基于 `one-api` 演化的增强分支，强调新的 UI、供应商管理、监控统计、价格更新和多供应商支持，适合关注面板与运维能力增强的读者继续跟踪。
- [Claude Relay Service](https://github.com/Wei-Shaw/claude-relay-service)
  一个面向 Claude 访问场景的专项 relay 服务，强调多账户管理、Claude API 中转与自建部署；其 README 中也提示新项目可优先关注 `sub2api` 这一代方案。

### 4. 第三方中转站

以下是国内外主流的大模型 API 中转/聚合平台，提供统一接口访问多家模型，通常按 token 计费，无需自建网关。

- [OpenRouter](https://openrouter.ai/)
  目前最主流的海外中转平台，统一 OpenAI 兼容接口接入 Claude、GPT、Gemini、Llama 等数百个模型，按量计费，支持 fallback 和模型路由。
- [硅基流动 SiliconFlow](https://siliconflow.cn/)
  国内主流中转平台，接入通义、GLM、DeepSeek、Llama 等模型，提供 OpenAI 兼容 API，部分开源模型有免费额度。

### 5. 提示词与内容辅助

- [PromptUp](https://promptup.net/)
  一个提示语收集与浏览网站，适合在需要快速参考 prompt 写法、任务模板和表达方式时作为辅助入口使用。
- [秒悟Meoo](https://ai-bot.cn/sites/75263.html)
  阿里ATH事业群推出的对话式AI开发工具，通过自然语言描述需求即可
  自动生成前后端完整的网站或H5页面，特色是**能自动生成 skill**， 
  适合快速原型验证和零代码建站场景。  
- [PromptPilot](https://promptpilot.volcengine.com/home?workspaceId=ws-20260408102547-h6a9V)
  字节跳动火山引擎提供的 AI 提示词管理平台，提供提示词版本管理、测试和协作功能。适合只有一个简单想法但不清楚如何实现的初步构想阶段使用，每周提供免费额度。

## 科研工具

### 1. 论文发现

- [Hugging Face Papers](https://huggingface.co/papers)
  适合快速发现最新 AI 论文，按社区讨论热度排序，更新频率高。

### 2. 文献阅读与管理

- [Zotero](https://www.zotero.org/)
  常用的文献管理工具，适合论文收藏、分类、批注和引用管理，尤其适合实验室长期积累阅读清单与专题资料。
- [alphaXiv](https://www.alphaxiv.org/)
  在 arXiv 论文页面上叠加社区批注和讨论，适合在阅读时获取他人观点和重点标注。
- [NotebookLM](https://notebooklm.google.com/)
  Google 提供的 AI 文献阅读助手，可以上传论文 PDF 后进行问答、摘要和交叉对比，适合快速理解长论文或同时消化多篇相关工作。

## 后续可补充内容

- 工具对比表
- 使用门槛与适用场景说明
- 与 benchmark 或论文的对应关系
