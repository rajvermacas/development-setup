# Library and Technology Evaluation Criteria

## Library Assessment Framework

### 1. Maturity & Stability

**Check:**
- Release history (semver adoption, major version changes)
- Age of project (newer ≠ worse, but consider stability needs)
- Breaking changes frequency
- LTS (Long-Term Support) availability

**Search queries:**
```
"[library] release history"
"[library] breaking changes"
"[library] stability issues"
"[library] production ready"
```

**Red flags:**
- Frequent breaking changes without clear migration paths
- Major version changes with poor changelogs
- Abandoned mid-development features

### 2. Community & Maintenance

**Check:**
- GitHub stars and forks (popularity indicator)
- Recent commits and PR activity
- Issue response time and closure rate
- Number of active contributors
- Community size (Discord, Reddit, Forums)

**Search queries:**
```
"[library] maintenance status"
"[library] community size"
site:github.com/[org]/[repo] (check directly)
```

**Red flags:**
- No commits in 6+ months (for actively developed projects)
- High number of unresolved critical issues
- Single maintainer with no bus factor planning
- Hostile or inactive community

### 3. Documentation Quality

**Check:**
- Completeness (API coverage, examples, guides)
- Up-to-date with latest version
- Clarity and organization
- Real-world examples vs. trivial demos
- Migration guides between versions

**Search queries:**
```
"[library] documentation quality"
"[library] learning curve"
"[library] getting started"
```

**Red flags:**
- Missing API documentation
- Examples that don't work
- No migration guides for breaking changes
- Documentation significantly outdated

### 4. Performance & Efficiency

**Check:**
- Benchmark comparisons with alternatives
- Bundle size / memory footprint
- Runtime performance characteristics
- Scalability evidence

**Search queries:**
```
"[library] performance benchmark"
"[library] vs [alternative] performance"
"[library] bundle size"
"[library] memory usage"
```

**Consider:**
- Is performance critical for your use case?
- Trade-offs: developer experience vs. raw performance
- Real-world vs. synthetic benchmarks

### 5. Production Readiness

**Check:**
- Companies using it in production
- Case studies and testimonials
- Known production issues
- Enterprise adoption

**Search queries:**
```
"[library] production issues"
"[library] case study"
"companies using [library]"
"[library] at scale"
```

**Red flags:**
- Multiple reports of production crashes
- Scaling problems
- Data loss or corruption issues
- No evidence of large-scale usage

### 6. Security

**Check:**
- Known vulnerabilities (CVEs)
- Security audit history
- Dependency security
- Security response process

**Search queries:**
```
"[library] security vulnerabilities"
"[library] CVE"
"[library] security audit"
site:nvd.nist.gov [library]
```

**Red flags:**
- Unpatched critical vulnerabilities
- Poor security disclosure process
- Insecure defaults
- Abandoned dependencies with known issues

### 7. Ecosystem & Integration

**Check:**
- Integration with popular tools/frameworks
- Plugin/extension ecosystem
- TypeScript support (for JS libraries)
- Testing support

**Search queries:**
```
"[library] integrate with [framework]"
"[library] typescript support"
"[library] plugins ecosystem"
```

**Consider:**
- Does it work well with your existing stack?
- Are there quality plugins for needed features?
- Is there good IDE support?

### 8. License & Legal

**Check:**
- License type (MIT, Apache, GPL, etc.)
- License compatibility with your project
- Patent clauses
- Commercial use restrictions

**Search queries:**
```
"[library] license"
site:github.com/[org]/[repo] (check LICENSE file)
```

**Red flags:**
- GPL when you need permissive license
- Unclear or dual licensing
- Patent trolling history

## Best Practices Research Framework

### 1. Source Authority

**Prioritize:**
- Official documentation and guides
- Well-known industry experts (check credentials)
- Major tech company engineering blogs
- Academic papers for foundational concepts
- RFCs and standards documents

**Search strategies:**
```
"[topic] best practices" site:martinfowler.com
"[topic] architecture" site:aws.amazon.com/blogs
"[topic] patterns" site:github.com
```

### 2. Recency & Relevance

**Consider:**
- How fast does this domain evolve?
- Are older practices still valid?
- What's changed since this was written?

**Time-sensitive topics:**
- Security practices (always use latest)
- Cloud service patterns (update frequently)
- Framework-specific patterns (match your version)
- Performance optimization (hardware changes)

**Timeless topics:**
- Design patterns (SOLID, etc.)
- Algorithms and data structures
- Fundamental architecture patterns
- Core programming principles

### 3. Consensus vs. Controversy

**Check multiple sources to identify:**
- Widely accepted practices (high consensus)
- Debated approaches (understand trade-offs)
- Context-dependent recommendations
- Evolving opinions

**Search patterns:**
```
"[practice] controversy"
"[practice] debate"
"[approach A] vs [approach B]"
reddit.com/r/programming "[topic]"
```

### 4. Real-World Validation

**Look for:**
- Case studies with metrics
- Production war stories
- Lessons learned posts
- "In Practice" articles

**Search queries:**
```
"[practice] case study"
"[practice] lessons learned"
"[practice] production experience"
"[practice] war stories"
```

### 5. Trade-offs Understanding

**Effective practices should explain:**
- When to use vs. when not to use
- Benefits and costs
- Alternative approaches
- Context dependency

**Red flags:**
- "Always do X" without context
- Silver bullet claims
- No mention of trade-offs
- Missing failure scenarios

## Technology Comparison Framework

### Side-by-Side Comparison

**Dimensions to compare:**
1. Purpose & use cases
2. Learning curve
3. Performance characteristics
4. Ecosystem maturity
5. Community size & activity
6. Production adoption
7. Operational complexity
8. Cost (if applicable)

### Decision Matrix Template

| Criterion | Weight | Option A | Option B | Option C |
|-----------|--------|----------|----------|----------|
| Performance | High | 8/10 | 6/10 | 9/10 |
| DX (Developer Experience) | High | 9/10 | 5/10 | 7/10 |
| Community | Medium | 7/10 | 9/10 | 4/10 |
| Maturity | High | 9/10 | 8/10 | 5/10 |
| Documentation | Medium | 8/10 | 6/10 | 7/10 |
| Ecosystem | Medium | 9/10 | 7/10 | 5/10 |

### Common Comparison Patterns

**Web Frameworks:**
- Performance benchmarks
- Routing capabilities
- Middleware ecosystem
- ORM integration
- Testing support

**Databases:**
- Query performance
- Scalability patterns
- Consistency model
- Operational complexity
- Cost at scale

**Frontend Libraries:**
- Bundle size
- Runtime performance
- Developer experience
- Ecosystem size
- Learning curve

## Validation Checklist

Before recommending a library or practice, verify:

- [ ] Found at least 3 independent sources supporting it
- [ ] Checked recency (appropriate for domain)
- [ ] Identified trade-offs and limitations
- [ ] Confirmed production usage examples
- [ ] Verified compatibility with user's stack
- [ ] Assessed maintenance and security status
- [ ] Considered alternatives and why this is preferred
- [ ] Understood licensing implications

## Red Flags Summary

**Immediate disqualifiers:**
- Critical unpatched security vulnerabilities
- Abandoned projects (no activity for 1+ years)
- Incompatible license
- Confirmed data loss/corruption issues

**Strong cautions:**
- Single maintainer, no community
- No production usage evidence
- Poor or missing documentation
- Frequent breaking changes
- Unresolved critical bugs

**Investigate further:**
- Mixed community sentiment
- Recent maintainer change
- Major version in beta
- Limited but growing community
- New but promising technology
