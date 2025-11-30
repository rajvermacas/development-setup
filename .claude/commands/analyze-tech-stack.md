---
description: Analyze a requirement file to extract tech stack, research with @tech-intelligence-researcher agent, and create a custom skill using /skill-creator
argument-hint: [path-to-file]
model: sonnet
---

I need to analyze a technology stack and create a custom skill from research findings.

File to analyze: @$ARGUMENTS

## Workflow

### Step 1: Extract Tech Stack
Read the requirement file provided above. Extract and list:
- All technology names and frameworks mentioned
- Library names and dependencies
- Version information (if present)
- Use cases and contexts for each technology

### Step 2: Research Technologies
Use the @tech-intelligence-researcher agent to comprehensively research each extracted technology:
- Latest documentation
- Current best practices and standards
- Industry adoption trends
- Common integration patterns and pitfalls
- Performance considerations and benchmarks
- Community support and ecosystem health

### Step 3: Create Reusable Skill
Use the /skill-creator skill to create a high-quality skill that encapsulates all the research findings:
- Skill name: Based on the primary tech stack identified
- Description: Clear summary of what the skill provides
- Content: Include best practices, integration guides, and patterns from the research
- Usage: Document when and how to use the skill across projects

Focus on creating a skill that is immediately useful and comprehensive for developers working with these technologies.
