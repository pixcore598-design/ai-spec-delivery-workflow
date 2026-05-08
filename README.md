# AI Spec Delivery Workflow

Turn AI coding from prompt roulette into a repeatable delivery system.

把 AI 编码从“想到就写”变成“先对齐、再实现、最后拿证据交付”的标准流程。

Built around `OpenSpec + Superpowers + gstack`, this repo gives you a reusable workflow for AI agents such as Claude Code, Trae, Cursor, and similar tools.

## Why People Star This

Most AI coding setups break down in the same place:

- they start coding before requirements are aligned
- they make large hidden jumps during execution
- they call work "done" without proof

This repo fixes that with a practical default:

- align intent before coding
- break work into small executable steps
- verify with tests, screenshots, QA, or runtime evidence
- hand off with risks and next actions clearly stated

In short:

> no alignment, no large task
>
> no evidence, not done

## What You Get

- A reusable Trae skill for spec-driven delivery
- A reusable Claude rule document
- A drop-in `CLAUDE.md` template for global or project usage
- A simple installer for fast adoption
- A launch kit so you can share the workflow with your team or audience

## 60-Second Install

### Option 1: Run Directly From GitHub

```bash
curl -fsSL https://raw.githubusercontent.com/pixcore598-design/ai-spec-delivery-workflow/main/install.sh | bash
```

### Option 2: Clone And Install

```bash
git clone https://github.com/pixcore598-design/ai-spec-delivery-workflow.git
cd ai-spec-delivery-workflow
chmod +x install.sh
./install.sh
```

The installer will:

- install the skill into `~/.trae/skills/spec-delivery-workflow`
- copy the rule into `~/.claude/rules/spec-delivery-workflow.md`
- write `templates/CLAUDE.md` into `~/.claude/CLAUDE.md` only if that file does not already exist

## The Problem It Solves

Without a workflow, AI delivery often looks like this:

- vague request
- immediate code generation
- unclear assumptions
- weak validation
- regressions discovered late

With this workflow, the path becomes:

`alignment -> clarification -> decomposition -> implementation -> verification -> handoff`

That means fewer blind spots, fewer rewrites, and much better trust in AI output.

## What's Inside

- `skills/spec-delivery-workflow/SKILL.md`
  Reusable skill text for spec-driven execution.
- `rules/spec-delivery-workflow.md`
  Reusable rule document for persistent behavior.
- `templates/CLAUDE.md`
  Default workflow template for global or project setup.
- `docs/launch-kit.md`
  Ready-to-post launch copy for GitHub, X, communities, and private sharing.

## Core Workflow

### 1. Align Before Coding

Before implementation, define:

- `proposal`: why this change matters
- `design`: how it should work
- `tasks`: what gets executed

Even if you do not maintain a formal `openspec/` directory, the structure still applies.

### 2. Clarify Before Modifying

When scope, acceptance, or risk is unclear:

- ask targeted questions
- surface assumptions
- stop large unverified implementation jumps

### 3. Execute In Small Steps

- break large work into small increments
- keep changes scoped and reversible
- use search or subagents for parallelizable read-only work

### 4. Verify With Evidence

Completion requires evidence such as:

- test results
- runtime checks
- browser screenshots
- QA notes
- command output

Rule:

- no evidence, not done

### 5. Handoff Clearly

Every finished task should answer:

- what changed
- what was verified
- what risks remain
- what should happen next

## Best For

This repo is especially useful if you:

- use Claude Code, Trae, Cursor, or similar AI coding agents
- want production-grade delivery instead of one-shot prompting
- need a repeatable standard for feature work, refactors, or cross-module changes
- work with teams that need visible reasoning and evidence-based completion

## Recommended Prompts

Use prompts like:

- `按 spec delivery workflow 推进这个任务`
- `先规范拆解，再实现并验证`
- `用 OpenSpec + Superpowers + gstack 处理这个功能`
- `Treat this as a production-grade delivery task`
- `Do not jump into coding. Align scope and acceptance first.`

## Suggested Adoption Path

1. Install the skill
2. Add the template into your global or project `CLAUDE.md`
3. Use the workflow on one real medium-sized task
4. Keep lightweight mode for tiny fixes
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
│   └── launch-kit.md
├── install.sh
├── LICENSE
└── README.md
```

## Launch Kit

If you want to publish or share this repo, use the ready-made copy here:

- [docs/launch-kit.md](./docs/launch-kit.md)

It includes:

- GitHub launch copy
- X or Twitter short posts
- Chinese community sharing copy
- internal team adoption copy

## Philosophy

This project is built on one simple belief:

> AI should not jump from vague intent to "done".

AI should move through a visible delivery path:

`alignment -> decomposition -> implementation -> verification -> handoff`

## License

MIT

## If You Find This Useful

- Star the repo
- Open an issue with your workflow improvements
- Share how you adapted it to your own agent stack
