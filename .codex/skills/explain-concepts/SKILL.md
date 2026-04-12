---
name: explain-concepts
description: Use when explaining a concept, mechanism, protocol, architecture, abstraction, or system from multiple angles, including requests like explain X, what is X, how does X work, or walk me through X
---

# Explain Concepts

## Overview

Produce concise, high-signal concept explanations in a system-design style. Keep the response structured, component-aware, and useful from multiple angles, not just one linear explanation.

## Response Contract

Output these sections in this order:

1. `TL;DR (3-5 bullets)`
2. `Core idea`
3. `Why it exists`
4. `When it is used`
5. `Components`
6. `Chronological Flow (cause -> effect)`
7. `ASCII Diagram`
8. `Mental Model`
9. `Failure Points / Edge Cases`
10. `(Optional) Deep Dive`
11. `Q&A / Problems and Solutions`

Do not skip `ASCII Diagram`.
Do not skip `Q&A / Problems and Solutions`.

## Section Rules

### TL;DR

- Write 3 to 5 bullets.
- Compress the concept into the few points that matter most.

### Core idea

- State what the concept is.
- Name the central mechanism or abstraction.

### Why it exists

- State the problem the concept is trying to solve.
- Explain why simpler or earlier approaches are insufficient when relevant.

### When it is used

- State the contexts where the concept is a good fit.
- State when it is unnecessary if that helps sharpen the boundary.

### Components

List all components involved. For each component, provide:

- `Name`
- `Responsibility`
- `Input`
- `Output`

If the topic has no obvious physical components, derive conceptual components such as:

- actor
- state
- artifact
- protocol
- data structure
- invariant
- interface

### Chronological Flow (cause -> effect)

Write a step-by-step sequence from start to end.

For each step, show:

- which component acts
- what input it receives
- what output it produces
- what triggers the next step

Keep the flow aligned with the diagram.

### ASCII Diagram

- Make it mandatory.
- Use arrows for direction.
- Keep the diagram readable in plain text.
- Match the components and sequence used in the chronological flow.

### Mental Model

- Give the intuition behind the system.
- Add a short analogy only if it improves clarity.

### Failure Points / Edge Cases

- Surface where the concept breaks, degrades, or becomes tricky.
- Explain what happens when it does.
- Prefer real trade-offs over generic warnings.

### Deep Dive

- Include only when low-level protocol, implementation, or performance details materially help.
- Omit it when it would add noise.

## Q&A / Problems And Solutions

Always include a Q&A section after the main explanation.

Use it to expand the concept from different angles, including:

- basic framing questions
- the underlying problem statement
- why the solution exists
- what happens if the concept is skipped
- common misconceptions
- trade-offs and limitations
- common implementation or usage problems
- practical resolutions or best practices

For each item, keep it compact and include:

- `Question`
- `Short answer`
- `Typical problem / misconception`
- `Resolution / best practice`

Do not fill this section with generic FAQ fluff. Use it to reveal useful angles that sharpen understanding.

## Style Rules

- Prefer bullets over paragraphs.
- Keep paragraphs short when bullets would be awkward.
- Avoid walls of text.
- Avoid storytelling.
- Avoid repetition across sections.
- Prioritize clarity over completeness.
- Prefer concrete nouns and verbs over vague summaries.
- Explain both the problem and the solution.
- Stay concise and dense.

## Fallback Rules

- If the user asks a very basic question, still keep the structure, but simplify the language.
- If the topic is abstract, derive conceptual components instead of dropping the components section.
- If the topic is simple, keep the answer short rather than inventing depth.
- If multiple interpretations exist, state the assumed interpretation briefly and continue.
