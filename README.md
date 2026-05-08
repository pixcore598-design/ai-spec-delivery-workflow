# AI Spec Delivery Workflow

Spec-driven delivery workflow for AI coding agents, built around `OpenSpec + Superpowers + gstack`.

面向 AI 编码代理的规范驱动交付工作流，核心思路是：

- `OpenSpec` 管需求与规范
- `Superpowers` 管执行与拆解
- `gstack` 管验证与交付

目标不是“一次性生成代码”，而是把 AI 开发过程变成：

- 可对齐
- 可拆解
- 可验证
- 可复用

## Why This Repo

Most AI coding workflows fail in production for three recurring reasons:

1. Requirements are not aligned before implementation.
2. Execution becomes a black box.
3. Completion is declared without evidence.

这个仓库提供了一套简单但够硬的默认工作流，帮助你把 AI 从“能写点代码”提升到“能交付一个有证据支撑的结果”。

## What’s Included

- `skills/spec-delivery-workflow/SKILL.md`
  A reusable skill for spec-driven delivery.
- `rules/spec-delivery-workflow.md`
  A reusable rule document that explains the workflow.
- `templates/CLAUDE.md`
  A drop-in global or project-level Claude workflow template.

## Core Workflow

### 1. Align Before Coding

Before implementation, define:

- `proposal`: why this change exists
- `design`: how it should work
- `tasks`: executable delivery steps

### 2. Clarify Before Modifying

When scope, risk, or acceptance is unclear:

- ask questions
- expose assumptions
- stop vague implementation jumps

### 3. Execute In Small Steps

- break large work into small increments
- keep changes scoped
- use subagents/search for parallelizable read-only work

### 4. Verify With Evidence

Completion requires evidence such as:

- test results
- runtime checks
- browser screenshots
- QA notes
- command output

Rule:

- no evidence, not done

## Who This Is For

This repo is useful if you:

- build with Claude Code, Trae, Cursor, or similar AI coding agents
- want a production-grade workflow rather than prompt roulette
- need a repeatable default for feature work, refactors, and cross-module changes

## Install

### Option 1: Copy Manually

Copy the files into your local environment:

- Skill -> `~/.trae/skills/spec-delivery-workflow/`
- Rule -> `~/.claude/rules/`
- Template -> `~/.claude/CLAUDE.md` or project `CLAUDE.md`

### Option 2: Use The Installer

```bash
chmod +x install.sh
./install.sh
```

This will:

- install the skill into `~/.trae/skills/spec-delivery-workflow`
- copy the rule into `~/.claude/rules`
- write `templates/CLAUDE.md` to `~/.claude/CLAUDE.md` if no file exists there yet

## Recommended Prompts

Use prompts like:

- `按 spec delivery workflow 推进这个任务`
- `先规范拆解，再实现并验证`
- `用 OpenSpec + Superpowers + gstack 处理这个功能`
- `Treat this as a production-grade delivery task`

## Suggested Adoption Path

1. Install the skill
2. Add the template into your global or project `CLAUDE.md`
3. Use the workflow on one real medium-sized task
4. Keep the lightweight mode for tiny fixes
5. Require evidence before calling work complete

## Repo Structure

```text
.
├── skills/
│   └── spec-delivery-workflow/
│       └── SKILL.md
├── rules/
│   └── spec-delivery-workflow.md
├── templates/
│   └── CLAUDE.md
├── docs/
├── install.sh
├── LICENSE
└── README.md
```

## Philosophy

This workflow follows one simple principle:

> AI should not jump from vague intent to “done”.

Instead, AI should move through:

`alignment -> decomposition -> implementation -> verification -> handoff`

## License

MIT

## If You Find This Useful

- Star the repo
- Open an issue with your workflow improvements
- Share examples of how you adapted it to your own agent stack
