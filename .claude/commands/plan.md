---
argument-hint: [requirement]
description: Plan and re-articulate the requirement
---

Think hard and write up a detailed implementation plan. Create this plan as a master markdown file in the `.dev-resources/context/plan/{feature-name}/` directory. Additionally, create individual phase files that serve as complete standalone implementation guides and will be updated to track progress throughout development.

## Master Plan Structure

The master plan should include:
- **Overview of the implementation approach**
- **High-level architecture decisions**
- **List of all files to be created/modified across all phases**
- **Development Phases summary with dependencies**
- **Overall testing strategy**
- **Documentation requirements**
- **Cross-phase integration points**

## Individual Phase Files

For each development phase, create a separate markdown file in `.dev-resources/context/plan/{feature-name}/phases/` named `phase-{number}-{descriptive-name}.md`. Each phase file must be:

### Self-Contained and Independent
- Include all necessary context and background
- Contain complete architectural guidance for that phase
- Be implementable without referencing other phase files
- Include all required dependencies and setup instructions

### Comprehensive Implementation Guide
Each phase file should contain:

#### Phase Overview
- **Objective**: Clear statement of what this phase accomplishes
- **Scope**: Detailed boundaries of what is and isn't included
- **Prerequisites**: Any setup, dependencies, or prior knowledge needed
- **Success Criteria**: Measurable outcomes that define phase completion

#### Architectural Guidance
- **Design Patterns**: Specific patterns and approaches to use
- **Code Structure**: Directory structure and file organization
- **Data Models**: Entity relationships and data flow
- **API Contracts**: Interface definitions and specifications
- **Technology Stack**: Specific libraries, frameworks, and tools

#### Detailed Implementation Tasks
- **Step-by-step tasks with checkboxes** for granular progress tracking
- **Code examples and templates** for complex implementations
- **Configuration snippets** for setup requirements
- **Integration points** with existing codebase

#### Quality Assurance
- **Testing Requirements**: Unit, integration, and e2e tests specific to this phase
- **Code Review Checklist**: Phase-specific items to validate
- **Performance Considerations**: Benchmarks and optimization targets
- **Security Requirements**: Phase-specific security concerns

#### Junior Developer Support
- **Common Pitfalls**: Known issues and how to avoid them
- **Troubleshooting Guide**: Solutions to likely problems
- **Reference Links**: Documentation and examples
- **Code Style Guidelines**: Formatting and naming conventions
- **Review Checkpoints**: When to seek senior developer input

#### Deliverables
- **Files to create/modify** with detailed specifications
- **Documentation updates** required
- **Lookbook components** if UI components are involved
- **Migration scripts** if database changes are involved

## Research and Clarification Process

If there are things you still do not understand or questions you have for the user, pause here to ask them before continuing.

## Directory and File Structure

Create the following directory structure:
```
.dev-resources/context/plan/{feature-name}/
├── implementation-plan.md
└── phases/
    ├── phase-01-foundation.md
    ├── phase-02-core-features.md
    └── phase-XX-{descriptive-name}.md
```

- Master plan: `implementation-plan.md` (in the feature directory)
- Phase files: `phase-{number}-{descriptive-name}.md` (in the phases subdirectory)
- Each phase should have a descriptive name that clearly indicates its purpose

## Important Constraints

**Keep the doc concise, crisp and pointed. Do not overbloat. You are a PLANNER. DO NOT START CODING. Write algorithms, not code.**

Your role is to create comprehensive, standalone guides that enable independent implementation of each phase while maintaining overall system coherence.