#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

TRAE_SKILL_DIR="${HOME}/.trae/skills/spec-delivery-workflow"
CLAUDE_RULE_DIR="${HOME}/.claude/rules"
CLAUDE_FILE="${HOME}/.claude/CLAUDE.md"

mkdir -p "${TRAE_SKILL_DIR}"
mkdir -p "${CLAUDE_RULE_DIR}"
mkdir -p "$(dirname "${CLAUDE_FILE}")"

cp "${ROOT_DIR}/skills/spec-delivery-workflow/SKILL.md" "${TRAE_SKILL_DIR}/SKILL.md"
cp "${ROOT_DIR}/rules/spec-delivery-workflow.md" "${CLAUDE_RULE_DIR}/spec-delivery-workflow.md"

if [ ! -f "${CLAUDE_FILE}" ]; then
  cp "${ROOT_DIR}/templates/CLAUDE.md" "${CLAUDE_FILE}"
  echo "Installed ${CLAUDE_FILE}"
else
  echo "Skipped ${CLAUDE_FILE} because it already exists"
  echo "You can manually merge ${ROOT_DIR}/templates/CLAUDE.md into your existing CLAUDE.md"
fi

echo "Installed skill to ${TRAE_SKILL_DIR}"
echo "Installed rule to ${CLAUDE_RULE_DIR}/spec-delivery-workflow.md"
