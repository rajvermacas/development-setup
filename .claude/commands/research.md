**Ultra Thinking Requirements:**
- Question every assumption before spawning agents
- Consider multiple interpretations of the problem
- Think about optimal agent specialization
- Analyze patterns across all agent findings
- Connect insights from different agents
- Challenge conventional solutions
- Identify when additional agents are needed
- Think about agent blind spots# Claude Code Software Development Research Prompt

You are tasked with helping solve a software development challenge. Before providing any solution, you must:

1. **THINK ULTRA** - Engage in deep, comprehensive thinking about the problem
2. **SPAWN SUB-AGENTS** - Create multiple parallel research agents to investigate different aspects simultaneously
3. **EXHAUSTIVE RESEARCH** - Each agent conducts thorough internet searches using BOTH the **context7 MCP tool** AND **web_search**
4. **LEAVE NO STONE UNTURNED** - Consider every angle, edge case, and possibility

This is not a quick task. Take your time to think deeply, spawn multiple agents for parallel research, and analyze thoroughly to ensure you're providing the most current, efficient, and well-tested approach.

## Critical: Dual Search Protocol with Ultra Thinking and Parallel Sub-Agents

### Sub-Agent Spawning Strategy
**Spawn multiple sub-agents to research in parallel:**
- **Agent 1**: Focus on official documentation and best practices
- **Agent 2**: Search for common errors, issues, and solutions
- **Agent 3**: Look for performance optimizations and benchmarks
- **Agent 4**: Research alternative approaches and competing solutions
- **Agent 5**: Investigate security implications and vulnerabilities
- **Agent 6**: Find real-world implementations and case studies

Each sub-agent should:
1. **THINK FIRST**: Deeply analyze their specific research area
2. **Use context7**: Execute targeted searches with context7 MCP tool
3. **Use web_search**: Get additional results with web_search
4. **THINK AGAIN**: Analyze and synthesize findings
5. **Report findings**: Compile results for main agent synthesis

**Main Agent Responsibilities:**
- Coordinate all sub-agents
- Identify gaps in research and spawn additional agents as needed
- Synthesize all findings into coherent insights
- Resolve conflicting information between agents
- Ensure no aspect is overlooked

## Research Protocol for Software Development

### Parallel Research Architecture
**Why spawn sub-agents:**
- **Speed**: Research multiple aspects simultaneously instead of sequentially
- **Depth**: Each agent can focus deeply on their specific area
- **Coverage**: Ensures no research avenue is missed
- **Cross-validation**: Multiple agents can verify each other's findings

**Coordination Protocol:**
1. Main agent defines research areas and spawns specialized sub-agents
2. Sub-agents work in parallel, each using both context7 and web_search
3. Regular synchronization points to share findings
4. Main agent identifies gaps and spawns additional agents as needed
5. Final synthesis combines all agent findings

### 1. **Initial Technical Assessment** (PARALLEL EXECUTION)
   **Spawn 3-4 sub-agents to research simultaneously:**
   - **Sub-Agent A**: Search for the exact error message or problem description
   - **Sub-Agent B**: Look for Stack Overflow discussions and GitHub issues
   - **Sub-Agent C**: Search for official documentation of relevant technologies
   - **Sub-Agent D**: Check for recent updates or deprecations in the tech stack
   
   Each agent uses BOTH context7 AND web_search for their assigned topics.

### 2. **Deep Technical Research** (MASSIVE PARALLEL EXECUTION)
   
   **Spawn 6-8 specialized sub-agents working simultaneously:**
   
   **Implementation Pattern Agents:**
   - **Sub-Agent E**: Search for "[technology] best practices current" and design patterns
   - **Sub-Agent F**: Find production-ready code examples and repositories
   
   **Code Example Agents:**
   - **Sub-Agent G**: Search GitHub for implementations and boilerplate projects
   - **Sub-Agent H**: Look for tutorials, gists, CodePen examples
   
   **Problem-Solving Agents:**
   - **Sub-Agent I**: Research common pitfalls, gotchas, and troubleshooting
   - **Sub-Agent J**: Find security considerations and vulnerabilities
   
   **Each agent uses BOTH context7 and web_search, then reports findings for synthesis**

### 3. **Advanced Research** (10-20 total searches: 5-10 topics × 2 tools)
   
   **Performance & Optimization** (use both context7 and web_search for each):
   - Search for performance optimization techniques
   - Look for profiling and debugging approaches
   - Find scalability considerations
   
   **Alternative Approaches** (use both context7 and web_search for each):
   - Search for competing libraries or frameworks
   - Look for pros/cons comparisons
   - Find benchmark comparisons
   - Search for "vs" comparisons (e.g., "React vs Vue for [use case]")
   
   **Edge Cases & Production Concerns** (use both context7 and web_search for each):
   - Search for production deployment guides
   - Look for error handling best practices
   - Find testing strategies and examples
   - Search for accessibility and internationalization considerations

### 4. **Community & Expert Insights** (8-10 total searches: 4-5 topics × 2 tools)
   For each, use BOTH context7 AND web_search:
   - Search for recent blog posts from recognized experts
   - Look for conference talks or presentations on the topic
   - Check for relevant discussions on Reddit (r/programming, language-specific subreddits)
   - Search for case studies from major tech companies

### 5. **Version-Specific Research** (6-8 total searches: 3-4 topics × 2 tools)
   For each, use BOTH context7 AND web_search:
   - Always check for version-specific documentation
   - Search for breaking changes between versions
   - Look for migration guides
   - Check compatibility matrices

## Search Execution Pattern

For EVERY search topic:
```
1. context7: "[your search query]"
   - Analyze results
   - Note key findings
   
2. web_search: "[same or refined search query]"
   - Compare with context7 results
   - Look for additional insights
   
3. If discrepancies found:
   - context7: "[refined query for clarification]"
   - web_search: "[refined query for clarification]"
```

## Search Query Templates

**Remember: Execute each query twice - once with context7, once with web_search**

- "[technology] [problem] site:stackoverflow.com"
- "[error message] [language] [framework] latest"
- "[feature] implementation [language] github"
- "[technology] best practices current"
- "[problem] solution benchmark comparison"
- "how to [task] in [technology] production"
- "[technology] [version] breaking changes migration"

**For time-sensitive searches, use terms like:**
- "latest", "current", "modern", "recent"
- "after:YYYY" in Google to filter results
- Sort by date on Stack Overflow, GitHub issues
- Check "Last updated" dates on documentation

## Solution Development Process

**ULTRA THINKING PHASE** - Before writing any code:
- Synthesize ALL research findings
- Question if your solution truly addresses the root problem
- Consider long-term implications
- Think about maintainability 5 years from now
- Analyze potential failure modes
- Consider how your solution scales
- Think about edge cases that weren't explicitly mentioned

After exhaustive research and ultra thinking, provide:

### 1. **Executive Summary**
   - Problem statement clarification
   - Recommended approach with justification
   - Key technologies and versions to use
   - Note any discrepancies found between context7 and web_search results

### 2. **Detailed Implementation**
   ```language
   // Provide complete, production-ready code
   // Include error handling
   // Add comprehensive comments
   // Follow language-specific conventions
   ```

### 3. **Code Explanation**
   - Line-by-line explanation of critical sections
   - Design decisions and trade-offs
   - Performance considerations
   - Security implications

### 4. **Alternative Solutions**
   - Present 2-3 alternative approaches found during research
   - Pros and cons of each
   - When to use each approach
   - Note which tool (context7 or web_search) provided each alternative

### 5. **Testing & Validation**
   - Unit test examples
   - Integration test suggestions
   - Manual testing steps
   - Performance testing recommendations

### 6. **Deployment Considerations**
   - Environment setup
   - Configuration management
   - CI/CD pipeline suggestions
   - Monitoring and logging recommendations

### 7. **Troubleshooting Guide**
   - Common errors and solutions
   - Debugging techniques
   - Performance profiling tips

### 8. **Resources & References**
   - Official documentation links
   - Helpful tutorials and guides
   - Community resources
   - Related Stack Overflow answers
   - Note which resources came from context7 vs web_search

## Critical Requirements

1. **Always use BOTH tools** - Never rely on just context7 or just web_search
2. **Verify across sources** - Cross-reference findings between both tools
3. **Check for deprecated methods** - Ensure all code uses current APIs
4. **Consider security** - Never suggest insecure practices
5. **Think about scale** - Solutions should work for production use
6. **Include error handling** - All code must handle edge cases
7. **Follow conventions** - Use language-specific style guides

## Expected Search Volume

**Minimum sub-agents to spawn: 15-20 agents working in parallel**

**Agent Distribution:**
- Initial Assessment: 3-4 agents
- Deep Research: 6-8 agents
- Advanced Research: 4-5 agents
- Community Insights: 2-3 agents
- Version Research: 2 agents

**Total searches: Each agent performs 4-8 searches (2-4 unique queries × 2 tools)**
**Aggregate: 60-160 total searches across all agents**

**Coordination overhead: Main agent should expect to:**
- Spawn agents in waves based on initial findings
- Deduplicate overlapping discoveries
- Identify and fill research gaps
- Synthesize 15-20 agent reports into coherent solution

## Problem Statement

**Technology Stack**: [Specify languages, frameworks, versions]
**Problem Description**: [Detailed description of the coding challenge]
**Constraints**: [Any specific requirements or limitations]
**Context**: [Application type, scale, user base, etc.]

---

Remember: The goal is to provide a solution that is not just functional, but production-ready, maintainable, and based on current best practices discovered through:
- **ULTRA THINKING** - Deep, critical analysis at every step
- **PARALLEL SUB-AGENTS** - Multiple agents researching simultaneously for maximum coverage
- **EXHAUSTIVE RESEARCH** - Each agent using BOTH context7 and web_search
- **LEAVING NO STONE UNTURNED** - Every agent considering their domain's possibilities and edge cases

This is not about speed - it's about thoroughness, depth, and quality. Think ultra, spawn agents strategically, research exhaustively in parallel, and deliver excellence.