# Skill Generation Guide

This document provides guidance on structuring research findings into effective skills.

## Skill Structure Principles

### Progressive Disclosure

Skills should follow a three-tier information architecture:

1. **SKILL.md** - Core workflow and navigation (<500 lines)
2. **references/** - Detailed documentation loaded as needed
3. **scripts/** - Executable code for deterministic tasks

### Content Organization

Organize content by domain or concern:

```
topic-skill/
├── SKILL.md (overview + navigation)
└── references/
    ├── core-concepts.md (fundamentals)
    ├── patterns.md (implementation patterns)
    ├── best-practices.md (production guidelines)
    └── api-reference.md (detailed API docs)
```

## SKILL.md Template

```markdown
---
name: topic-name
description: Comprehensive description including triggers and use cases
---

# Topic Name

Brief overview of what this skill covers.

## Overview

What's included in this skill:
- Core concepts and fundamentals
- Implementation patterns
- Best practices
- API reference

## Quick Start

Basic usage guidance here.

### Key Concepts

See [core-concepts.md](references/core-concepts.md) for fundamentals.

### Common Patterns

See [patterns.md](references/patterns.md) for implementation examples.

### Best Practices

See [best-practices.md](references/best-practices.md) for production guidelines.

### API Reference

See [api-reference.md](references/api-reference.md) for detailed API docs.

## When to Use This Skill

- Use case 1
- Use case 2
- Use case 3
```

## Reference File Templates

### core-concepts.md

```markdown
# Core Concepts - [Topic]

## Overview

Fundamental concepts and terminology.

## Key Concepts

### Concept 1

Explanation with examples.

### Concept 2

Explanation with examples.

## Architecture

How components fit together.

## Data Flow

How data moves through the system.
```

### patterns.md

```markdown
# Common Patterns - [Topic]

## Implementation Patterns

### Pattern 1: [Name]

**Use case:** When to use this pattern

**Implementation:**

```language
code example
```

**Trade-offs:**
- Pro 1
- Con 1

### Pattern 2: [Name]

[Similar structure]

## Anti-Patterns

What to avoid and why.
```

### best-practices.md

```markdown
# Best Practices - [Topic]

## Production Guidelines

### Security

- Practice 1
- Practice 2

### Performance

- Practice 1
- Practice 2

### Testing

- Practice 1
- Practice 2

### Deployment

- Practice 1
- Practice 2

## Common Pitfalls

### Pitfall 1

What to avoid and why.

**Solution:** How to do it correctly.

### Pitfall 2

[Similar structure]
```

### api-reference.md

```markdown
# API Reference - [Topic]

## Core APIs

### API 1

**Purpose:** What it does

**Signature:**
```language
function_signature()
```

**Parameters:**
- param1: Description
- param2: Description

**Returns:** Return value description

**Example:**
```language
example_usage()
```

### API 2

[Similar structure]

## Utilities

[Similar structure for utility functions]
```

## Description Writing Guidelines

The description field is critical for skill triggering. Include:

1. **What the skill covers** - Core topics and capabilities
2. **When to use it** - Specific triggers and scenarios
3. **Use cases** - Concrete examples

**Example:**

```yaml
description: Comprehensive guide for FastAPI with latest documentation, best practices, and implementation patterns. Use when working with FastAPI for: (1) Building REST APIs, (2) WebSocket implementations, (3) Authentication and authorization, (4) Database integration, (5) Deployment and optimization, (6) Testing strategies.
```

## Content Density Guidelines

**SKILL.md:**
- Keep under 500 lines
- Focus on navigation and quick reference
- Link to references for details
- Include only essential examples

**Reference files:**
- Can be longer (up to 1000 lines)
- Include comprehensive coverage
- Organize with clear sections
- Add table of contents if >200 lines

## Quality Checklist

Before finalizing a skill:

- [ ] Description includes clear triggers
- [ ] SKILL.md under 500 lines
- [ ] All references linked from SKILL.md
- [ ] Code examples are tested
- [ ] Information is current (latest version)
- [ ] No duplicate information across files
- [ ] Clear navigation structure
- [ ] Consistent formatting
- [ ] Proper markdown syntax
- [ ] No TODO placeholders

## Common Mistakes to Avoid

1. **Overloading SKILL.md** - Move detailed content to references
2. **Missing triggers** - Description must include when to use
3. **Duplicate content** - Information should live in one place
4. **Stale information** - Verify all content is current
5. **Missing links** - Every reference file should be linked from SKILL.md
6. **Unclear organization** - Logical grouping by topic/concern
7. **Missing examples** - Include practical code examples
8. **No table of contents** - Add to files >200 lines

## Testing Generated Skills

After generation:

1. **Validate structure** - Run package_skill.py validator
2. **Test triggers** - Verify description triggers correctly
3. **Check links** - All reference links work
4. **Verify code** - All code examples run
5. **Review content** - Information is accurate and current
6. **Check organization** - Logical flow and structure
