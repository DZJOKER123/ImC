#!/usr/bin/env sh
set -eu

if command -v pipx >/dev/null 2>&1; then
  pipx install .
  exit 0
fi

python -m pip install --user .
echo "pipx not found; installed with --user. Ensure your user scripts directory is on PATH."
