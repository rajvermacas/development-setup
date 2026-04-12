---
name: project-explainer
description: Explain a software project or repository by identifying its purpose, major components, control/config files, runtime flow, and component interactions. Use when the user asks to explain a project, codebase, repo, architecture, modules, execution flow, startup path, or how pieces fit together, especially when they want concise but complete output with diagrams.
---

# Project Explainer

Produce a compact, evidence-based architecture walkthrough of the current project. Prefer accuracy over coverage theater: read the files that actually define behavior, then summarize only what matters.

## Quick Start

1. Run `scripts/project_scan.sh <repo-root>` to get a fast inventory of likely entrypoints and manifests.
2. Read local repo guidance first: `AGENTS.md`, `README*`, and the primary package/build manifests.
3. Read the real execution files, not only docs. Trace imports, entrypoints, startup code, and orchestration files.
4. Group the codebase into a small set of components:
   - runtime components
   - control/config or prompt/policy components
   - data or state artifacts
   - support or analysis components
5. Explain the project with plain ASCII diagrams by default. Use Mermaid only if the user explicitly wants it or the interface clearly renders it.

## Required Output Shape

Use this order unless the user asks otherwise:

1. `What it is`
   - 2-4 sentences on the project purpose and operating model.
2. `Main components`
   - flat bullets or a small table
   - include each important file/module and its role
3. `How components interact`
   - one ASCII component diagram
4. `Execution flow`
   - one ASCII flow for the main runtime path
   - include setup/bootstrap flow if it materially differs from runtime
   - include outer orchestration loop if the repo has one
5. `Key invariants or constraints`
   - only if they materially shape behavior
6. `Important file references`
   - link the highest-signal files

Keep it concise. Avoid walls of text. Default to short sections and dense bullets.

## Workflow

### 1. Establish Scope

Determine the repo type and likely execution surface:

- Python: `pyproject.toml`, `requirements*.txt`, `setup.py`
- Node: `package.json`, framework configs
- Rust: `Cargo.toml`
- Go: `go.mod`
- Containers and ops: `Dockerfile*`, `docker-compose*`, CI files
- Repo policy: `AGENTS.md`, `CLAUDE.md`, `GEMINI.md`

If the repo is tiny, read all core files. If it is large, focus on the runtime path the user is most likely asking about and say what was intentionally left out.

### 2. Build The Project Map

Identify, at minimum:

- entrypoints or executable scripts
- core libraries/modules
- shared utilities
- data sources and caches
- evaluation/reporting/analysis layer
- configuration and dependency manifests
- any agent/prompt/orchestration layer if present

Distinguish these categories clearly:

- `core runtime`: code that executes the main behavior
- `fixed infrastructure`: code or files that constrain or benchmark the runtime
- `orchestration`: scripts, prompts, CI, schedulers, or agent instructions
- `analysis/support`: notebooks, plots, reports, helper scripts

### 3. Trace Actual Execution

Reconstruct the path from command invocation to end result:

- what command starts the system
- what it loads first
- what major objects are constructed
- what loop or request cycle runs
- what outputs are produced
- what metric, result, or side effect determines success

When there are multiple flows, cover the important ones separately:

- one-time setup flow
- main runtime flow
- autonomous/outer loop flow

### 4. Create Diagrams

Prefer ASCII diagrams that render everywhere.

Component interaction diagram template:

```text
User / Operator
  |
  v
control-file-or-entrypoint
  |
  +--> component A
  |      |
  |      +--> shared utility / state
  |
  +--> component B
         |
         +--> output artifact
```

Execution flow template:

```text
start command
  |
  v
load config / inputs
  |
  v
build main objects
  |
  v
run loop / process request
  |
  v
evaluate / persist / print result
```

Do not emit Mermaid as the only diagram format.

### 5. State Evidence Clearly

Base claims on files you actually read. When something is inferred rather than explicit, say so briefly.

Good:

- `train.py` imports the dataloader and evaluation helpers from `prepare.py`, so `prepare.py` is fixed infrastructure for training.

Bad:

- `prepare.py` is probably some helper layer.

## Coverage Checklist

Before answering, verify that you covered:

- project purpose
- main executable path
- main components
- component interactions
- execution flow
- important outputs/artifacts
- constraints that shape behavior

If any of these are missing, fix the answer before sending it.

## Precision Rules

- Prefer ASCII diagrams by default.
- Prefer short paragraphs and flat bullets.
- Avoid file dumps and exhaustive trees unless the user asked for them.
- Avoid repeating README claims that are contradicted or superseded by code.
- Prefer real runtime files over notebooks, images, and lockfiles.
- If the interface likely hides command output, summarize the findings directly.

## Using The Scan Script

Run `scripts/project_scan.sh <repo-root>` first for a quick inventory. It is only a starting point. Always read the real core files before answering.
