# Spec Delivery Workflow Rule

## Purpose

将 `OpenSpec + Superpowers + gstack` 固化为一套统一的交付规则，用于生产级或接近生产级的软件任务。

目标：

- 降低需求理解偏差
- 提升执行过程可观测性
- 用真实证据而不是主观判断收尾

## Core Principle

默认遵循：

1. 先对齐，再实现
2. 先拆解，再并行/串行执行
3. 先验证，再宣告完成

一句话：

- `OpenSpec` 管规范
- `Superpowers` 管执行
- `gstack` 管验证与交付

## Scope

适用于：

- 中大型功能开发
- 多文件重构
- 跨模块改造
- 公共接口或共享逻辑变更
- 需要浏览器验证、QA 验证、测试证据的任务

不强制适用于：

- 单文件小修复
- 文案、配置、命名等轻量变更
- 不需要完整流程即可稳定完成的任务

## Standard Workflow

### 1. Spec Alignment

在写代码前，先对齐以下信息：

- `proposal`：为什么要做、目标、非目标、成功标准
- `design`：技术方案、影响范围、接口、数据流、风险
- `tasks`：可执行任务清单

若没有正式 `openspec/` 目录，也必须在回复中给出等价结构。

### 2. Clarification

遇到歧义时，先澄清：

- 边界条件
- 验收口径
- 风险与回滚
- 是否需要兼容旧逻辑
- 是否需要测试、截图、QA、部署验证

### 3. Small-Step Planning

- 将任务拆成 2-5 分钟粒度的小步
- 只读调研优先交给搜索/子代理
- 大任务分阶段推进，不做一口气大跳跃修改

### 4. Disciplined Execution

- 以已对齐任务为输入执行
- 修改保持范围清晰、可验证、可回退
- 需要时补测试，不做无价值测试
- 发现规范错误时，先回退更新规范，再继续实现

### 5. Evidence-Based Verification

至少提供一种有效证据，优先级如下：

- 自动化测试结果
- 运行检查结果
- 浏览器截图或页面状态验证
- QA 步骤与观察结果
- 命令输出或日志证据

规则：

- 没有证据，不算完成

### 6. Handoff

结尾必须说明：

- 改了什么
- 验证了什么
- 还有哪些风险/缺口
- 下一步建议

## Execution Modes

### Lightweight

适用于小但不完全 trivial 的任务：

- 简短对齐
- 直接实现
- 定向验证

### Standard

适用于大多数功能任务：

- 规范摘要
- 澄清与拆解
- 分步实现
- 证据化验证

### Full Delivery

适用于高风险、大范围任务：

- 完整 spec
- 子任务拆解与并行调研
- 测试驱动或测试兜底
- 浏览器与 QA 验证
- 交付与上线后检查

## Recommended Triggers

可用这些提示词触发：

- 按 spec delivery workflow 推进
- 先规范拆解，再实现并验证
- 用 OpenSpec + Superpowers + gstack 处理这个任务
- Treat this as a production-grade delivery task

## Notes

- 这份 Rule 是通用规则文本。
- 真正用于长期生效的默认入口应写入 `~/.claude/CLAUDE.md` 或项目级 `CLAUDE.md`。
