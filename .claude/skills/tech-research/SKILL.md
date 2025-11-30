---
name: tech-research
description: Comprehensive internet research for discovering libraries, frameworks, tools, official documentation, industry best practices, design patterns, and code examples. Use when Claude needs to research library/framework discovery and comparison, official documentation and API references, industry best practices and architectural patterns, code examples and tutorials, technology evaluations and trade-off analysis, security practices and performance optimization patterns, or modern approaches to technical problems. Provides structured search strategies, evaluation frameworks, and quality assessment criteria.
---

# Tech Research

Research libraries, documentation, best practices, and modern technical approaches effectively using internet search.

## Core Capabilities

This skill provides:

1. **Library Discovery** - Find and compare libraries/frameworks for specific use cases
2. **Documentation Research** - Locate official docs, API references, and integration guides
3. **Best Practices** - Research industry standards, patterns, and architectural approaches
4. **Code Examples** - Find quality implementation examples and tutorials
5. **Technology Evaluation** - Assess libraries and approaches using systematic criteria

## Research Workflow

### 1. Understand the Research Need

Before searching, clarify:

- **What problem needs solving?** (e.g., "PDF manipulation in Python")
- **What's the context?** (production app, prototype, learning project)
- **What constraints exist?** (performance, license, bundle size, compatibility)
- **What's the priority?** (stability vs. features, DX vs. performance)

### 2. Execute Multi-Source Search Strategy

**For library discovery:**

```
Search sequence:
1. "[language] [task] library comparison 2024" - get landscape
2. "[library name] vs [alternative]" - compare top candidates
3. "[library name] production issues" - validate reliability
4. "companies using [library name]" - check adoption
```

**For best practices:**

```
Search sequence:
1. "[topic] best practices [year]" - get current consensus
2. "[topic] architecture patterns" - find established patterns
3. "[topic] case study" or "lessons learned" - real-world validation
4. "[technology] [topic] official guide" - authoritative source
```

**For documentation:**

```
Search sequence:
1. "[library] official documentation" - start with source
2. "[library] [feature] example" - specific implementations
3. "[library] migration guide" - version compatibility
4. "[framework] [library] integration" - ecosystem fit
```

**For code examples:**

```
Search sequence:
1. "[library] real-world example" - practical implementations
2. "[use case] implementation [technology]" - solution patterns
3. "site:github.com [library] example" - repository code
4. "[library] cookbook" or "recipes" - curated examples
```

### 3. Evaluate Search Results

Use WebSearch tool to fetch results, then assess quality:

**High-priority sources:**
- Official documentation (.io, .dev, .org domains)
- GitHub repositories (README, examples, issues)
- Established tech blogs (Martin Fowler, major company blogs)
- Documentation aggregators (ReadTheDocs, npm docs)

**Medium-priority sources:**
- Stack Overflow (check votes and acceptance)
- Technical communities (Dev.to, HackerNoon - verify recency)
- Well-attributed Medium articles

**Use caution with:**
- Content farms with generic advice
- Very old posts (pre-2020 for fast-evolving tech)
- Marketing-heavy vendor content
- Unverified or low-vote answers

### 4. Synthesize Findings

After gathering information:

1. **Identify consensus** - What do multiple reputable sources agree on?
2. **Note controversies** - Where do opinions diverge and why?
3. **Assess recency** - Is this current for the technology's evolution pace?
4. **Validate real-world use** - Is there evidence of production usage?
5. **Understand trade-offs** - What are the benefits and costs?

### 5. Present Recommendations

Structure findings clearly:

```markdown
## Research Summary: [Topic]

### Recommended Approach: [Option Name]

**Rationale:** [1-2 sentences why this is recommended]

**Key Strengths:**
- [Strength 1 with evidence]
- [Strength 2 with evidence]

**Considerations:**
- [Trade-off or limitation 1]
- [Trade-off or limitation 2]

**Alternatives Considered:**
- **[Alternative 1]:** [Why not chosen]
- **[Alternative 2]:** [Why not chosen]

### Implementation Guidance

[Link to official docs]
[Key code example or pattern]
[Integration notes if applicable]

Sources:
- [Source 1 with link]
- [Source 2 with link]
```

## Quick Reference: Search Patterns

### Library Discovery

```
Optimal queries:
- "[language] [task] library 2024"
- "[library] vs [alternative] comparison"
- "[library] benchmark"
- "[library] production ready"

Evaluation searches:
- "[library] maintenance status"
- "[library] security vulnerabilities"
- "companies using [library]"
- "[library] community size"
```

### Documentation Research

```
Direct documentation:
- "[library] official documentation"
- "[library] api reference"
- "[library] [version] docs"

Integration guides:
- "[library A] integrate with [library B]"
- "[framework] [library] setup"
- "[library] quickstart"
```

### Best Practices

```
Pattern discovery:
- "[technology] architecture best practices 2024"
- "[problem domain] design patterns"
- "[technology] production architecture"
- "how to structure [application type]"

Validation:
- "[practice] case study"
- "[practice] lessons learned"
- "[practice] production experience"
```

### Advanced Search Operators

Use for precision:

```
site:github.com "[library]" example
site:docs.[technology].com "[feature]"
"[exact phrase]" -tutorial
intitle:"[library]" best practices
filetype:pdf "[topic]" architecture
```

## Domain-Specific Patterns

### Frontend Development

**Library discovery:**
- "React component library comparison"
- "JavaScript bundler benchmark 2024"

**Best practices:**
- "React performance optimization"
- "CSS architecture patterns"
- "web accessibility implementation"

### Backend Development

**Library discovery:**
- "Python web framework comparison"
- "Node.js ORM library"
- "Go HTTP router benchmark"

**Best practices:**
- "API design best practices"
- "database connection pooling"
- "authentication patterns"

### DevOps & Infrastructure

**Tool discovery:**
- "container orchestration comparison"
- "monitoring stack 2024"

**Best practices:**
- "CI/CD pipeline patterns"
- "infrastructure as code best practices"
- "zero-downtime deployment"

### Data Science & ML

**Library discovery:**
- "Python ML library comparison"
- "data visualization library"

**Best practices:**
- "ML model deployment patterns"
- "data pipeline architecture"
- "experiment tracking"

## Evaluation Framework

For detailed library/technology evaluation, consult [evaluation-criteria.md](references/evaluation-criteria.md).

**Quick assessment checklist:**

- [ ] **Maturity:** Release history, stability, breaking changes frequency
- [ ] **Community:** GitHub activity, contributor count, community size
- [ ] **Documentation:** Completeness, clarity, real-world examples
- [ ] **Performance:** Benchmarks, bundle size, scalability evidence
- [ ] **Production:** Companies using it, case studies, known issues
- [ ] **Security:** CVEs, security audit history, response process
- [ ] **Ecosystem:** Integration support, plugins, TypeScript support
- [ ] **License:** Compatibility with project requirements

## Time Sensitivity Guidelines

**Require recent results (2024-2025):**
- Rapidly evolving tech (JS frameworks, AI/ML tools)
- Security best practices
- Cloud services and APIs
- Performance benchmarks

**Accept older results (2020+):**
- Fundamental patterns and principles
- Stable, mature technologies
- Design patterns
- Core language features

**Any age acceptable:**
- Mathematical algorithms
- Computer science fundamentals
- Timeless architectural principles

## Reference Materials

This skill includes detailed reference guides:

### [search-strategies.md](references/search-strategies.md)

Comprehensive search query patterns and optimization techniques for:
- Library discovery with quality indicators
- Documentation location strategies
- Best practices and pattern research
- Code example finding
- Multi-source research workflows
- Domain-specific search patterns (Frontend, Backend, DevOps, Data Science)
- Advanced search operators

**When to read:** For in-depth guidance on constructing effective search queries and research strategies.

### [evaluation-criteria.md](references/evaluation-criteria.md)

Detailed frameworks for assessing:
- Library maturity, stability, and maintenance
- Community health and activity
- Documentation quality
- Performance and efficiency
- Production readiness and security
- Ecosystem integration
- Best practices validation
- Technology comparison matrices

**When to read:** When performing detailed evaluation of libraries or validating best practices.

## Common Research Scenarios

### Scenario 1: "What's the best library for [task]?"

1. Search: "[language] [task] library comparison [year]"
2. Identify top 3-5 candidates from results
3. For each candidate, search: "[library] production issues" and "[library] vs [alternative]"
4. Check GitHub: stars, recent commits, issue response time
5. Evaluate using framework in evaluation-criteria.md
6. Present recommendation with trade-offs

### Scenario 2: "How do I implement [feature]?"

1. Search: "[feature] implementation [technology] best practices"
2. Search: "[feature] [technology] example"
3. Find official docs: "[technology] [feature] documentation"
4. Validate approach: "[feature] production experience"
5. Synthesize pattern with code examples from reputable sources

### Scenario 3: "Should we use [Technology A] or [Technology B]?"

1. Search both: "[Tech A] vs [Tech B] comparison"
2. Search: "[Tech A] production issues" and "[Tech B] production issues"
3. Search: "[Tech A] case study" and "[Tech B] case study"
4. Create comparison matrix (see evaluation-criteria.md)
5. Present trade-offs clearly, recommend based on context

### Scenario 4: "What are current best practices for [topic]?"

1. Search: "[topic] best practices [year]"
2. Search: "[topic] architecture patterns"
3. Search: "[topic] lessons learned" or "war stories"
4. Check official guides: "[technology] [topic] official documentation"
5. Validate across multiple reputable sources
6. Present consensus practices with real-world validation

## Quality Assurance

Before presenting research findings, ensure:

- [ ] Consulted 3+ independent reputable sources
- [ ] Verified information recency (appropriate for domain)
- [ ] Identified and explained trade-offs
- [ ] Found real-world usage evidence
- [ ] Checked compatibility with user's context
- [ ] Assessed security and maintenance status
- [ ] Provided clear source citations
- [ ] Explained why recommended over alternatives

## Red Flags to Report

Alert user if research reveals:

**Critical:**
- Unpatched security vulnerabilities
- Abandoned projects (no activity 1+ years)
- Confirmed data loss/corruption issues
- License incompatibility

**Significant concerns:**
- Single maintainer, no community
- Poor or missing documentation
- Frequent breaking changes without migration guides
- No production usage evidence
- Multiple reports of production failures

## Tips for Effective Research

1. **Start broad, narrow down** - Get landscape view, then dive into specifics
2. **Use multiple sources** - Never rely on single source for critical decisions
3. **Check dates** - Fast-evolving tech needs recent sources
4. **Look for consensus** - What do experts agree on?
5. **Validate with real-world use** - Case studies > marketing claims
6. **Understand context** - "Best" depends on specific requirements
7. **Document sources** - Always cite where information came from
8. **Question absolutism** - Beware "always" or "never" without context
