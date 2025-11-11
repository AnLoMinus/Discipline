#!/usr/bin/env bash
set -euo pipefail

echo "🧹 מריץ לינט..."

if command -v ruff >/dev/null 2>&1; then
  ruff check .
fi

if command -v eslint >/dev/null 2>&1 && [ -f package.json ]; then
  npx eslint .
fi

if ! command -v ruff >/dev/null 2>&1 && ! command -v eslint >/dev/null 2>&1; then
  echo "⚠️  לא הותקן כלי לינט. התקן ruff או eslint והרץ שוב."
fi

