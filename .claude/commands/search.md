---
allowed-tools: Glob, Grep, Read, WebFetch, TodoWrite, WebSearch, BashOutput, KillShell, mcp__ide__getDiagnostics, mcp__ide__executeCode, mcp__fetch__fetch, mcp__context7__resolve-library-id, mcp__context7__get-library-docs, Bash, AskUserQuestion, Skill, SlashCommand
argument-hint: [search-query]
description: Search for specific technical information.
model: haiku
---

@agent-general-purpose Conduct a targeted search for the specific technical information requested in. Use **BOTH web fetch and web_search** to ensure comprehensive results.

## Quick Search Protocol

### Step 1: Initial Search (2 searches)
- web_search: "[main query]"

### Step 2: Refine if Needed (2-4 searches)
Based on initial results:
- If too broad → add specifics (version, technology, error code)
- If too narrow → broaden to related terms
- If outdated → add "latest", "2024", "current"

### Step 3: Verify Best Result (1-2 searches)
- Check if the top solution is still current
- Quick search for any major issues with the approach

## Search Query Formats

**For errors:**
- `[exact error message] [technology]`
- `[error code] [framework] solution`

**For how-to:**
- `how to [task] [technology] [version]`
- `[task] implementation [language] example`

**For best practices:**
- `[technology] [feature] best practices`
- `[technology] production tips`

**For comparisons:**
- `[option1] vs [option2] [use case]`
- `[technology] alternatives comparison`

## Response Format

### Found Information:
**Direct Answer**: [Clear, concise answer to the query]

**Key Sources**:
1. [Most helpful source - title and why it's useful]
2. [Second source if significantly different]

**Code Example** (if applicable):
```
[Minimal working example]
```

**Important Notes**:
- Version compatibility
- Common pitfalls
- Performance considerations (if relevant)

## Search Query:
$ARGUMENTS
