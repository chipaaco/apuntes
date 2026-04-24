#!/usr/bin/env bash
# ===========================================================
# commit-all.sh — Stage all changes and create a conventional commit
#
# Usage: bash scripts/commit-all.sh
# No push.
# ===========================================================

set -euo pipefail

REPO_ROOT="$(cd "$(dirname "$0")/.." && pwd)"
COMMIT_MESSAGE="chore(repo): snapshot working tree"
COMMIT_TRAILER="Co-authored-by: Copilot <223556219+Copilot@users.noreply.github.com>"

if [ -n "$(git -C "$REPO_ROOT" status --porcelain)" ]; then
    git -C "$REPO_ROOT" add -A
    git -C "$REPO_ROOT" commit -m "$COMMIT_MESSAGE" -m "$COMMIT_TRAILER"
    echo "Commit created: $COMMIT_MESSAGE"
    echo "To push to the remote main branch, run: git -C \"$REPO_ROOT\" push origin main"
else
    echo "No changes to commit."
fi
