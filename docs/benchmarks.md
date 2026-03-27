# Benchmarks

本页用于整理 AI coding（Vibe Coding）/ Coding Agent 方向常见 benchmark、评测任务和实验参考资源，服务于实验设计与研究比较。

## 仓库级 Coding Agent Benchmark

### SWE-bench

- [SWE-bench](https://www.swebench.com/) | [GitHub](https://github.com/princeton-nlp/SWE-bench) | [论文](https://arxiv.org/abs/2310.06770)

  当前 Coding Agent 评测的事实标准。从真实 GitHub issue 出发，要求 agent 在完整仓库中定位问题并生成补丁。SWE-bench Lite（300 题）和 SWE-bench Verified（500 题，人工验证）是最常用的子集。

### SWE-bench Multimodal

- [SWE-bench M](https://www.swebench.com/) | [论文](https://arxiv.org/abs/2410.03859)

  SWE-bench 的多模态扩展，任务描述中包含截图、UI 渲染等视觉信息，评估 agent 处理多模态工程任务的能力。

## 代码生成 Benchmark

### HumanEval / HumanEval+

- [HumanEval](https://github.com/openai/human-eval) | [HumanEval+](https://github.com/evalplus/evalplus)

  OpenAI 提出的函数级代码生成 benchmark（164 题），通过测试用例验证正确性。HumanEval+ 大幅扩充了测试用例，减少假阳性。虽然粒度较小，但仍是代码生成能力的基础参考。

### MBPP / MBPP+

- [MBPP](https://github.com/google-research/google-research/tree/master/mbpp) | [MBPP+](https://github.com/evalplus/evalplus)

  Google 提出的入门级 Python 编程 benchmark（974 题），与 HumanEval 互补，题目更简单但覆盖面更广。

## 端到端应用 Benchmark

### Vibe Code Bench

- [论文](https://arxiv.org/abs/2603.04601)

  面向端到端 Web 应用开发的评测，评估模型从需求到完整应用的交付能力。（详见 [papers.md](papers.md)）

## 真实场景评测

### XSCT Bench

- [XSCT Bench](https://xsct.ai/)

  把模型放进贴近真实使用的问题场景里做比较。适合作为模型选型、任务观察和案例拆解入口。（主页面在 [websites.md](websites.md) 的 Benchmark 与模型选型入口部分）

## 评测注意事项

- **环境一致性**：SWE-bench 等仓库级 benchmark 对环境依赖敏感，复现时需注意 Docker 镜像版本和依赖锁定
- **指标理解**：pass@1 与 resolve rate 含义不同，比较时需统一口径
- **数据污染**：部分 benchmark 的测试题可能已进入模型训练数据，关注是否使用了 contamination-free 子集

## 后续可补充内容

- 更多 repo-level benchmark（如 CrossCodeEval、RepoEval）
- 代码修复与编辑专项 benchmark
- benchmark 对比维度表
- 适合实验室复现的优先级建议
