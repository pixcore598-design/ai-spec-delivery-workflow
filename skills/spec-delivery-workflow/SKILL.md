---
name: "spec-delivery-workflow"
description: "Runs a spec-driven delivery workflow with OpenSpec, Superpowers, and gstack. Invoke for medium/large features, refactors, cross-module changes, or production-grade tasks needing alignment, staged execution, and evidence-based verification."
---

# Spec Delivery Workflow

This skill turns the `OpenSpec + Superpowers + gstack` methodology into a reusable delivery workflow for real software work.

本技能将 `OpenSpec + Superpowers + gstack` 方法论固化为一套可复用的生产级开发工作流，用于降低返工、增强过程可观测性，并以测试、截图、QA 结果作为完成依据。

## When To Invoke / 何时调用

Invoke this skill when:

- The task is a medium or large feature, refactor, workflow redesign, or cross-module change.
- The user wants production-grade delivery rather than one-shot code generation.
- Requirements are partially clear but still need alignment before coding.
- The task requires staged execution, review checkpoints, and concrete verification evidence.

在以下情况下调用本技能：

- 需求涉及中大型功能、新模块、跨文件重构、公共接口变更或流程改造。
- 用户期待“可落地、可验证、可交付”的结果，而不是一次性代码输出。
- 需求尚有边界、验收标准、影响范围需要先对齐。
- 任务必须补齐测试、截图、QA 结果、运行证据或交付说明。

Do not invoke this skill when:

- The task is a tiny localized edit with obvious scope and trivial verification.
- A simple explanation, one-file tweak, or quick config change is enough.

以下情况不要调用：

- 只是单文件微调、文案修正、变量改名、局部配置改动。
- 直接实现并做定向验证即可，无需完整工作流。

## Core Model / 核心分工

- `OpenSpec`: aligns intent, scope, success criteria, interfaces, and tasks before coding.
- `Superpowers`: executes the implementation through clarification, planning, decomposition, and disciplined delivery.
- `gstack`: verifies behavior in the real environment through browser actions, QA, shipping checks, and deployment validation.

对应中文分工：

- `OpenSpec` 负责需求对齐，不直接写代码。
- `Superpowers` 负责按规范执行实现，不跳过澄清、拆解、验证环节。
- `gstack` 负责真实环境验证与交付，不替代需求分析或架构决策。

## Workflow / 标准流程

### 1. Spec Alignment / 规范对齐

Before coding, create or summarize these artifacts:

- `proposal.md`: why this change matters, goals, non-goals, success criteria.
- `design.md`: architecture, interfaces, data flow, constraints, risks.
- `tasks.md`: executable implementation steps.

如果项目没有正式 `openspec/` 目录，也要至少在回复中给出这三层信息的简版：

- 为什么做
- 准备怎么做
- 拆成哪些任务

### 2. Clarify First / 先澄清再做

- Ask targeted questions for ambiguity, edge cases, permissions, rollout, and acceptance criteria.
- Surface hidden assumptions before editing code.
- If requirements are still unclear, pause implementation and force clarification.

### 3. Plan In Small Units / 小步拆解

- Break work into 2-5 minute executable chunks when possible.
- Prefer isolated steps with clear completion signals.
- Use subagents, search, or focused tools for parallelizable read-only work.

### 4. Implement With Discipline / 纪律化执行

- Follow the task list rather than improvising large unplanned jumps.
- Keep changes scoped and reversible.
- Add or update tests when they materially reduce regression risk.
- Avoid “done by intuition”; implementation must lead to verification.

### 5. Verify With Evidence / 证据化验证

Use the lightest sufficient evidence, but always provide evidence:

- Tests or targeted runtime checks
- Browser screenshots or UI state verification
- QA steps and observed results
- Command output proving success

关键原则：

- No tests, screenshots, QA report, or runtime proof -> not complete.
- 没有测试、截图、QA 报告或运行证据，不算完成。

### 6. Review And Handoff / 评审与交付

End with:

- what changed
- what was verified
- residual risks or gaps
- recommended next actions

## Output Contract / 输出契约

When using this skill, always produce:

- A short alignment summary
- A scoped task list or execution plan
- Clear notes on assumptions and decisions
- Verification evidence
- Final delivery summary with risks and follow-ups

使用本技能时，默认输出应包含：

- 目标与边界
- 任务拆解
- 假设与决策
- 验证证据
- 结果、风险、后续建议

## Execution Modes / 执行模式

### Lightweight Mode / 轻量模式

Use for small but non-trivial tasks:

- brief alignment
- direct implementation
- targeted verification

### Standard Mode / 标准模式

Use for most feature work:

- proposal/design/tasks summary
- clarification
- staged implementation
- evidence-based verification

### Full Delivery Mode / 完整交付模式

Use for large or high-risk work:

- full spec artifacts
- decomposition and subagent usage
- test-first or test-backed implementation
- browser/QA validation
- review, ship, deploy, and post-change checks

## Guardrails / 护栏

- Do not skip requirement alignment on ambiguous requests.
- Do not claim completion without verification evidence.
- Do not merge requirement analysis, implementation, and review into one vague blob.
- Do not over-process tiny tasks; choose the lightest workflow that preserves quality.
- If implementation reveals spec errors, update the spec or aligned plan before continuing.

## Recommended Prompts / 推荐触发语

Examples:

- “Use the spec delivery workflow for this feature.”
- “Apply OpenSpec + Superpowers + gstack to this task.”
- “Treat this as a production-grade delivery task.”
- “先按规范拆解，再实现并验证。”
- “按这套工作流推进，不要直接开写。”

## Practical Notes / 实操说明

- If the environment supports formal OpenSpec artifacts, create them.
- If not, emulate them in structured responses.
- Use browser tooling for UI verification instead of relying only on static reasoning.
- Prefer concise checkpoints over long hidden chains of work.
- Keep the workflow visible so the user can steer at each major step.
