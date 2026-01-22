Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

if (Get-Command pipx -ErrorAction SilentlyContinue) {
  pipx install .
  exit 0
}

python -m pip install --user .
Write-Host "pipx not found; installed with --user. Ensure your user scripts directory is on PATH."
