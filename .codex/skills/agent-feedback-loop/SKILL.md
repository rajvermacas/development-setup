---
name: agent-feedback-loop
description: >-
  Understand a user requirement, restate it in precise operational terms, and
  create or run a use-case-agnostic feedback loop that repeatedly acts,
  observes evidence, diagnoses deviations, applies the smallest correction,
  and verifies success. Use when the user asks Codex to design, monitor, test,
  or iterate any workflow until explicit acceptance criteria pass.
---

# Agent Feedback Loop

Use this skill to turn an ambiguous or evolving requirement into a controlled
repeatable loop. Apply it to software, research, analysis, operations,
subagent delegation, or any other domain. Do not assume a specific artifact,
tool, business process, or success metric.

## 1. Understand and rearticulate the requirement

Before creating the loop, restate the request in your own words. Identify:

- objective and intended outcome;
- starting state and required inputs;
- unit of work to repeat;
- observable output or evidence;
- acceptance criteria for one successful iteration;
- forbidden actions and side-effect boundary;
- stop, retry, timeout, and escalation conditions.

Present this rearticulation briefly. Preserve the user’s intent, name any
material ambiguity, and state safe assumptions. Ask one focused question when
an unresolved choice would materially change the loop; otherwise continue with
the smallest reasonable interpretation.

## 2. Create the loop contract

Express the loop as:

`prepare -> act -> observe -> compare -> diagnose -> correct -> repeat or stop`

Choose the actor and observation mechanism from the requirement. Define the
following before execution:

- immutable inputs and per-iteration outputs;
- the source of truth for comparison;
- the exact deviation condition;
- the correction owner and allowed write scope;
- the next-iteration input;
- completion evidence and the maximum safe wait/retry policy.

Separate planning from execution. If the loop may affect external systems,
require an explicit mutation boundary and keep destructive or irreversible
actions disabled until the user authorizes them.

## 3. Select the execution method

Use local tools for deterministic checks and fresh subagents for independent
behavioral validation when delegation is useful and authorized. For a fresh
subagent, use `fork_context: false` and provide only the minimum task-local
context. Do not leak the expected answer, suspected defect, or intended fix
into the validation prompt.

Use the available tool appropriate to the requirement. Record the command,
agent/model, input, output, timestamp, and status for each iteration. Preserve
raw artifacts so the next diagnosis is evidence-based.

## 4. Observe and communicate

Monitor long-running iterations at safe checkpoints. Report meaningful status
to the user at least every 60 seconds. Use queued input for a non-disruptive
status request and an interrupt only for a safety stop, immediate checkpoint,
or required correction.

If authentication, permission, or user data is required, report the exact
blocker and request the minimum missing input. Never fabricate a credential,
URL, result, or completion state.

## 5. Diagnose deviations

When an iteration fails its criteria, preserve the raw evidence and classify
the cause as:

- incorrect interpretation or execution;
- incomplete or contradictory requirement;
- environment, data, tool, or permission failure; or
- defective loop instructions or implementation.

Ask the actor to explain the deviation in its own words and cite the exact
input, instruction, output, or state that caused it. Distinguish an actor error
from a loop-design error before editing anything. Do not add speculative steps
for a deviation that the evidence does not support.

## 6. Correct and repeat

Apply the smallest correction to the loop, its prompt, implementation, or
source instructions. Add a focused test or assertion when practical. Rebuild
the next iteration from the corrected contract and raw artifacts; use a fresh
agent for independent validation rather than relying on the previous agent’s
conclusion.

Repeat until every acceptance criterion passes. Stop and report when:

- the output is evidence-backed and complete;
- no forbidden side effect occurred;
- all observed deviations are resolved;
- the loop’s stop conditions are satisfied; and
- relevant tests or deterministic checks pass.

If the same external blocker persists, stop after the defined retry policy and
report the exact blocker, attempted iterations, evidence collected, and next
required input. Never claim success because an intermediate step completed.

## Required response shape

For each loop request, provide:

1. **Rearticulation** — the requirement in your own words.
2. **Loop contract** — inputs, repeated action, observation, comparison,
   correction, success, stop, and side-effect boundaries.
3. **Execution** — the selected tools/actors and current iteration status.
4. **Evidence** — outputs, deviations, root causes, and corrections.
5. **Result** — whether the acceptance criteria passed or what exact input is
   still required.
