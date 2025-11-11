#!/usr/bin/env bash
set -euo pipefail

echo "🔎 מריץ בדיקות..."
if command -v pytest >/dev/null 2>&1; then
  pytest "${@}"
elif command -v npm >/dev/null 2>&1 && [ -f package.json ]; then
  npm test -- "${@}"
else
  echo "⚠️  לא נמצא כלי בדיקות מוכר. ודא שהתקנת pytest או npm."
  exit 1
fi

