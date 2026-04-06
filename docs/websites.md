# Websites

本页用于整理与 AI coding（Vibe Coding）/ Coding Agent 相关的资源类网站，包括模型公司官网、课程入口和 benchmark 参考页面。

## 当前收录

### 1. 主要模型公司入口

- [Claude / Anthropic](https://www.anthropic.com/)
- [ChatGPT / OpenAI](https://openai.com/)
- [Gemini / Google](https://gemini.google.com/)
- [智谱](https://www.zhipuai.cn/)
- [MiniMax](https://www.minimax.io/)
- [Kimi / Moonshot AI](https://www.moonshot.cn/)
- [Qwen / 阿里云通义](https://qwenlm.github.io/)

### 2. 官方文档与开发平台
- [Anthropic Docs](https://docs.anthropic.com/)  
  Anthropic 官方文档，包含 Claude API、工具调用、提示词、Agent 与 Claude Code 相关资料，是 Claude 生态最重要的一手资料入口。
- [OpenAI Platform Docs](https://platform.openai.com/docs/)  
  OpenAI 官方开发文档，适合查看 API、Agents/Responses、工具调用、模型说明和示例。
- [Google AI for Developers / Gemini Docs](https://ai.google.dev/)  
  Google 官方开发者入口，适合查看 Gemini API、示例、SDK 和多模态能力说明。
- [OpenRouter Docs](https://openrouter.ai/docs)  
  常用模型聚合调用平台文档，适合比较不同模型、快速切换模型进行 coding 场景实验。
- [GitHub Copilot Docs](https://docs.github.com/en/copilot)  
  GitHub Copilot 官方文档，适合了解 IDE 集成、CLI、代码补全、Chat、Agent 工作流和企业配置。

### 3. AI Coding / Coding Agent 工具官方入口
- [Claude Code](https://www.anthropic.com/claude-code)  
  Anthropic 的终端式 coding agent 官方入口，强调本地运行、权限确认、终端工作流结合。
- [OpenAI Codex](https://openai.com/codex/)  
  OpenAI 的 coding agent / 编程产品入口，适合关注端到端工程任务处理能力及官方方向。
- [GitHub Copilot](https://github.com/features/copilot)  
  GitHub 官方 AI 编程入口，适合与 GitHub 工作流、VS Code、PR Review、CLI 一起跟踪。
- [Cursor](https://www.cursor.com/)  
  当前使用非常广泛的 AI 编辑器之一，适合关注 IDE 内 Agent、代码库理解、长上下文与工作流设计。
- [Windsurf](https://windsurf.com/)  
  主流 AI IDE / Agent 工作流入口，适合和 Cursor、Copilot、Claude Code 对比观察。
- [Aider](https://aider.chat/)  
  常见开源终端 coding assistant，适合实际体验“在本地仓库中协作修改代码”的工作方式。
- [OpenHands](https://www.all-hands.dev/)  
  开源 Coding Agent / 软件工程 Agent 项目，适合持续关注 agent 执行、任务分解与 benchmark 表现。
- [Cline](https://cline.bot/)  
  常见开源 VS Code Agent 项目，适合关注“IDE 内 Agent”与工具调用实践。
- [Continue](https://www.continue.dev/)  
  常见开源 AI 编码助手项目，支持在 IDE 中接入多种模型，适合做本地化或可定制工作流实践。
- [Roo Code](https://roocode.com/)  
  常见 VS Code Agent 工具入口，适合关注社区驱动的 IDE Agent 工作流。
- [CodeGeeX](https://codegeex.cn/)  
  国产常见 AI 编码助手，适合补充国内工具生态观察。
- [通义灵码](https://lingma.aliyun.com/)  
  阿里云面向开发场景的 AI 编码产品入口，适合纳入国产 coding assistant 工具链中跟踪。
- [百度 Comate](https://comate.baidu.com/)  
  百度推出的 AI 编码助手，适合补充国内企业级编码助手产品观察。
  
### 4. 学习课程
- [Anthropic Claude 101](https://www.anthropic.com/learn/claude-101)  
  Anthropic 提供的免费课程，适合作为第一次系统接触 Claude 使用方式的入口。
- [OpenAI Academy](https://academy.openai.com/)  
  OpenAI 提供的学习资源入口，适合查找面向开发者和教育场景的官方材料。
- [DeepLearning.AI Short Courses](https://www.deeplearning.ai/short-courses/)  
  虽然不局限于 coding，但在 Agent、Prompt Engineering、LLM 应用搭建方面有较多高质量课程，适合作为补充学习路径。

### 5. 最佳实践
- [Vibe Coding 指南（中文）](https://github.com/egoist/vibe-coding-guide)  
  一个偏中文实践导向的 Vibe Coding 指南仓库，整理了入门路径、方法论、提示词、案例与工作流，适合作为持续参考的实践资料。
- [Anthropic Prompt Library](https://docs.anthropic.com/en/prompt-library/overview)  
  适合理解 Claude 在编码、写作、分析等任务中的提示词组织方式。
- [OpenAI Cookbook](https://cookbook.openai.com/)  
  OpenAI 官方示例与最佳实践资料，适合参考 API 调用、工作流设计、工具使用和工程化样例。
- [GitHub Copilot Resources](https://resources.github.com/learn/pathways/copilot/)  
  适合查看真实开发场景中的 Copilot 使用方式、最佳实践和企业落地经验。


### 6. Benchmark / 评测参考页面
- [SWE-bench](https://www.swebench.com/)  
  当前最有代表性的 AI 软件工程 benchmark 之一，用于评估模型或 agent 在真实 GitHub issue 修复任务上的表现。
- [LiveCodeBench](https://livecodebench.github.io/)  
  面向代码生成与动态题目的常见 benchmark，适合观察模型在编程题场景中的能力变化。
- [Terminal-Bench](https://www.tbench.ai/)  
  偏终端任务与 agent 执行能力的 benchmark，适合观察工具使用、命令行操作与多步执行表现。
- [Papers with Code](https://paperswithcode.com/)  
  适合快速查看某个 benchmark、任务方向、论文和 leaderboard 的聚合入口。
- [arXiv](https://arxiv.org/)  
  适合检索 AI coding、code generation、software engineering agents 等相关论文。


### 7. 社区与聚合资源
- [Latent Space](https://www.latent.space/)  
  长期关注 AI 工程、Agent、模型生态与开发工具，适合作为行业趋势和开发者实践的订阅入口。
- [Hugging Face](https://huggingface.co/)  
  适合关注开源模型、代码模型、Agent 实验项目与社区实践。
- [ai-coding-assistants（GitHub）](https://github.com/entrepeneur4lyf/ai-coding-assistants)  
  一个关于 AI coding assistants 的资源聚合仓库，适合做扩展阅读和补充索引。
- [Hacker News](https://news.ycombinator.com/)  
  适合追踪 AI coding 工具发布、社区讨论与开发者反馈。
- [Reddit](https://www.reddit.com/)  
  适合查看实际使用反馈、踩坑经验与热点讨论，但信息噪声较大，建议作为补充来源。

## 本页建议覆盖

### 1. 官方主页
优先收录高可信度的一手资源页面，包括：
- 产品主页
- 官方博客
- 发布页
- 更新日志页

### 2. 文档站点
对实际使用最有帮助，建议单独收录：
- API 文档
- SDK 文档
- Agent / Tool Calling 文档
- CLI 文档
- 最佳实践与 cookbook

### 3. 论文项目页
适合研究与 benchmark 跟踪：
- 论文主页
- arXiv 页面
- 项目主页
- leaderboard / benchmark 页面

### 4. 社区资源页
收录对学习和追踪有帮助的社区整理页面：
- 高质量教程
- 实践仓库
- 经验贴汇总
- 工作流模板

### 5. 长期跟踪入口
整理值得长期订阅和定期查看的资源来源：
- 官方博客
- Release Notes
- GitHub Repo
- 研究团队主页
- 行业 newsletter


## 推荐组织方式

### 1. 官方与文档入口
优先收录高可信度的一手资源页面。

建议每个条目采用统一格式：
- 网站名
- 一句话说明
- 适合查看什么
- 是否适合长期跟踪

### 2. 社区与聚合资源
收录对学习和追踪有帮助的社区整理页面。

建议增加简单说明：
- 是否偏入门
- 是否偏工程实践
- 是否长期维护
- 是否存在明显广告导向

### 3. 持续关注入口
整理值得长期订阅和定期查看的资源来源。

建议专门标出“建议每周 / 每月查看”的网站，例如：
- Anthropic Blog
- OpenAI News / Changelog
- Cursor Updates
- GitHub Copilot Blog / Docs 更新
- SWE-bench 相关 leaderboard

## 后续可补充内容

### 1. 按用途分类的网站索引
例如：
- 想体验工具看哪里
- 想接 API 看哪里
- 想学提示词看哪里
- 想看 benchmark 看哪里
- 想跟踪行业变化看哪里

### 2. 高质量聚合页推荐
优先推荐：
- 长期维护
- 来源可靠
- 分类清晰
- 对 AI coding / agent 有明显聚焦

### 3. 资源更新频率说明
建议后续为每个网站加上简单标签：
- 高频更新
- 中频更新
- 低频但权威
- 仅作历史参考

### 4. 是否适合新手
可以增加标签：
- 入门友好
- 工程实践导向
- 研究导向
- 工具对比导向

### 5. 是否需要科学上网 / 是否中文友好
对团队内部实际使用会很有帮助，尤其适合做“资源可达性”标注。
