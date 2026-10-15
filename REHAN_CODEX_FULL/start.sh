#!/usr/bin/env sh
# Start REHAN CODEX bot from the project folder.
set -eu
cd "$(dirname "$0")"
if command -v python >/dev/null 2>&1; then
  PYTHON="$(command -v python)"
elif command -v python3 >/dev/null 2>&1; then
  PYTHON="$(command -v python3)"
else
  echo "Python is not installed or is not on PATH." >&2
  exit 127
fi
exec "$PYTHON" main.py
