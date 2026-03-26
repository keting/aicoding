# OpenClaw

本页单独整理 OpenClaw 相关资源。原因很简单：它既是近期讨论度很高的热点项目，也同时涉及工具使用、渠道接入、生态插件和安全边界，单纯塞进 `tools.md` 容易被埋掉。

## 这一页适合放什么

- OpenClaw 项目简介
- 官方入口与安装资料
- 渠道接入案例
- 值得持续关注的生态项目
- 使用中的安全与权限注意事项

## 项目简介

[OpenClaw](https://github.com/openclaw/openclaw) 是一个开源的个人 AI assistant / agent 项目，强调本地运行、多平台接入和渠道扩展。它既可以被当作一个热门开源工具来看，也值得作为 Coding Agent 生态观察对象单独跟踪。

## 官方入口

- [OpenClaw GitHub 仓库](https://github.com/openclaw/openclaw)
- [OpenClaw 文档站](https://openclawdoc.com/)

## 推荐先看的资料

### 1. 飞书接入案例

- [飞书插件 × OpenClaw 保姆级配置指南](https://github.com/AlexAnys/openclaw-feishu?tab=readme-ov-file)

这篇资料的价值不只是“教你接飞书”，还在于它明确讨论了“飞书官方方案 vs OpenClaw 内置方案”的取舍，更接近真实部署时会遇到的问题。

### 2. 热门专题入口

如果你只是想先理解 OpenClaw 大致是什么、适合做什么、为什么最近很多人在讨论它，可以先看：

- 官方仓库 README
- 文档站中的安装与渠道配置
- 上面的飞书接入案例

## 为什么单列一页

OpenClaw 既像工具，又像生态专题。单列页面的好处是：

- 不会挤占通用工具页太多篇幅
- 后续可以继续补充插件、渠道、接入案例和使用经验
- 更适合跟踪一个“热点项目如何演化为实验室可用工具”这件事

## 使用提醒

- OpenClaw 这类 agent 工具通常涉及较高权限、外部连接和自动化操作，实验室实际使用时要特别注意权限范围、网络暴露面和密钥管理。
- 如果后续你们真的在实验环境中持续使用它，建议把“部署方式”“权限模型”“日志与安全注意事项”单独补一节。

## 交叉入口

- 工具索引见 [tools.md](tools.md)
- 持续跟踪入口见 [websites.md](websites.md)
- 如果要结合具体任务评测，可以再对照 [benchmarks.md](benchmarks.md)
