#!/usr/bin/env bash
set -euo pipefail

if [[ $# -ne 1 ]]; then
  echo "Usage: $0 <repo-root>" >&2
  exit 1
fi

repo_root="$1"

if [[ ! -d "$repo_root" ]]; then
  echo "Repo root does not exist: $repo_root" >&2
  exit 1
fi

cd "$repo_root"

echo "== Repo root =="
pwd
echo

echo "== Top-level files =="
find . \
  -path './.git' -prune -o \
  -type f -maxdepth 2 -print | sort | sed 's#^\./##' | head -n 200
echo

echo "== Guidance and docs =="
rg --files -g 'AGENTS.md' -g 'CLAUDE.md' -g 'GEMINI.md' -g 'README*' | sort || true
echo

echo "== Build and dependency manifests =="
rg --files \
  -g 'pyproject.toml' \
  -g 'requirements*.txt' \
  -g 'package.json' \
  -g 'Cargo.toml' \
  -g 'go.mod' \
  -g 'Makefile' \
  -g 'docker-compose*' \
  -g 'Dockerfile*' \
  -g '.gitignore' | sort || true
echo

echo "== Likely source files =="
rg --files \
  -g '*.py' \
  -g '*.ts' \
  -g '*.tsx' \
  -g '*.js' \
  -g '*.jsx' \
  -g '*.rs' \
  -g '*.go' \
  -g '*.sh' | sort | head -n 200 || true
echo

echo "== Common entrypoint patterns =="
rg -n \
  -e 'if __name__ == "__main__"' \
  -e 'if __name__ == '\''__main__'\''' \
  -e 'def main\(' \
  -e 'console\.log' \
  -e 'app\.listen\(' \
  -e 'createServer\(' \
  -e 'FastAPI\(' \
  -e 'Flask\(' \
  -e 'click\.command' \
  -e '@app\.' \
  -e 'argparse\.ArgumentParser' \
  --glob '*.py' \
  --glob '*.ts' \
  --glob '*.tsx' \
  --glob '*.js' \
  --glob '*.jsx' \
  --glob '*.rs' \
  --glob '*.go' | head -n 200 || true
