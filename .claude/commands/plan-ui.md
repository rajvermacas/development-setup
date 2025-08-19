# Agile MVP-First Development Planning Prompt

## Input Parameters
- **stage_count**: `$ARGUMENTS[0]` - Number of development stages (integer)
- **prd_document_file**: `$ARGUMENTS[1]` - Path to Product Requirements Document (string)

## Argument Validation
Ensure the following before proceeding:
1. `stage_count` is a positive integer (minimum 3 stages recommended for MVP approach)
2. `prd_document_file` path exists and is accessible
3. Both arguments are provided and non-empty

## Process Overview
This prompt creates a comprehensive, stage-based development plan following Agile principles with MVP-first approach and Test-Driven Development. **No coding will be performed at this stage.**

## Core Agile Principles
- **MVP First**: Stage 1 MUST deliver a working Minimum Viable Product
- **Iterative Enhancement**: Each subsequent stage adds features incrementally
- **User Value Focus**: Prioritize features by user value and business impact
- **Continuous Feedback**: Plan for user testing and feedback loops
- **Adaptive Planning**: Allow for pivots based on learnings

## Step-by-Step Instructions

### Step 1: Foundation Research
Read and analyze the following documents and codebase:
1. **Project Codebase Analysis**: Read the existing project codebase to get a comprehensive understanding of:
   - Current application architecture and structure
   - Existing features and functionality
   - Technology stack and dependencies
   - Code quality and patterns
   - Test coverage and structure
   - Database schema and data models
   - API endpoints and integrations
   - UI/UX components and design patterns
   - Configuration and deployment setup
2. **TDD Guidelines**: `/root/.claude/commands/test-driven-development.md`
3. **Product Requirements**: Content from `prd_document_file`
4. **Advanced UI Builder System Prompt**: `/root/.claude/commands/ui-system-prompt.md`

### Step 2: MVP Definition
Before creating the full plan, define:
- **Core Problem**: The primary user problem being solved
- **Essential Features**: Absolute minimum features for a functional product
- **Success Metrics**: How to measure if the MVP achieves its goal
- **User Persona**: Primary target user for the MVP
- **Existing Foundation**: What current codebase components can be leveraged for MVP

### Step 3: Plan Creation
Generate a detailed `stage_count`-stage development plan with MVP-first approach:

#### Stage 1: MVP Development (MANDATORY)
**Requirements for MVP Stage:**
- **Bare Minimum Functionality**: Only essential features that solve the core problem
- **Working Product**: Must be deployable and usable by real users
- **Quick Iteration**: Target 2-4 week completion
- **Basic UI/UX**: Functional but not polished interface
- **Core Tests**: Essential unit and integration tests only
- **Feedback Mechanism**: Built-in way to collect user feedback
- **Leverage Existing Code**: Identify and utilize existing codebase components where applicable

**MVP Deliverables Must Include:**
- Functional application addressing the primary use case
- Basic error handling and edge case management
- Deployment-ready code with minimal dependencies
- User documentation for core features
- Feedback collection system
- Integration with existing application components (if applicable)

#### Stages 2 through N: Iterative Enhancement
For each subsequent stage, include:

**Stage Overview**:
- Build upon MVP based on user feedback and priority
- Clear iteration goals and scope
- Feature additions that enhance user value
- Refactoring of existing code where necessary

**Agile Components**:
- **Sprint Goal**: What this iteration aims to achieve
- **User Stories**: In format "As a [user], I want [feature] so that [benefit]"
- **Story Points**: Relative complexity estimates
- **Acceptance Criteria**: Definition of Done for each story
- **Retrospective Items**: Improvements from previous stage

**Technical Requirements**:
- Incremental architecture improvements
- Performance optimizations if needed
- Scalability considerations
- Technical debt management
- Integration with existing systems

**Test Strategy**:
- New tests for added features
- Regression test suite expansion
- Performance testing if applicable
- User acceptance testing plan

**Feedback Integration**:
- How previous stage feedback is addressed
- New feedback mechanisms
- A/B testing opportunities

**Dependencies**:
- Prerequisites from previous stages
- External dependencies
- Risk factors
- Existing codebase dependencies

**Deliverables**:
- Enhanced working product
- Updated documentation
- Test coverage reports
- User feedback summary
- Codebase integration reports

#### Plan Requirements:
- **MVP Priority**: Stage 1 must deliver working software
- **Incremental Value**: Each stage adds measurable user value
- **Feedback Loops**: Built-in mechanisms for continuous improvement
- **Technical Debt Management**: Plan for refactoring and optimization
- **Scalability Path**: How the MVP evolves to full product
- **Feature Prioritization**: Use MoSCoW method (Must/Should/Could/Won't)
- **Codebase Integration**: Strategy for incorporating existing code assets

### Step 4: Risk Assessment
Include specific MVP risks:
- Feature creep in MVP stage
- Over-engineering early stages
- Insufficient user feedback mechanisms
- Technical limitations of quick MVP build
- Integration challenges with existing codebase
- Compatibility issues with current architecture

### Step 5: Approval Process
Present the complete plan highlighting:
- MVP scope and rationale
- Feature progression across stages
- Feedback integration strategy
- Technical evolution path
- Existing codebase utilization strategy

### Step 6: Plan Storage
Upon approval, save the plan as:
- **Location**: `resources/development_plan/`
- **Filename**: `{project_name}_agile_mvp_plan_{timestamp}.md`
- **Format**: Well-structured Markdown with proper headings and formatting

## Quality Standards
- **MVP Clarity**: Stage 1 must clearly define minimal viable features
- **Iterative Progress**: Each stage builds logically on user feedback
- **Measurable Outcomes**: Every stage has success metrics
- **User-Centric**: Features prioritized by user value
- **Adaptable**: Plan allows for pivots based on learnings
- **Time-Boxed**: Each stage has realistic timeframes (2-4 weeks recommended)
- **Code Integration**: Efficient use of existing codebase components

## Output Format
Structure the response as:
1. **Executive Summary** (2-3 paragraphs emphasizing MVP approach)
2. **Existing Codebase Analysis Summary**
3. **MVP Definition & Rationale**
4. **Technology Stack Overview** (minimal for MVP, expandable later)
5. **Stage-by-Stage Breakdown**:
   - Stage 1: MVP (detailed specifications)
   - Stages 2-N: Enhancement iterations
6. **Feature Prioritization Matrix**
7. **Codebase Integration Strategy**
8. **Feedback Integration Strategy**
9. **Risk Assessment & Mitigation**
10. **Success Metrics & KPIs**
11. **Next Steps**

## Agile Planning Guidelines
- **Start Small**: MVP should be completable in 2-4 weeks
- **User Stories First**: Define features from user perspective
- **Continuous Delivery**: Each stage produces deployable software
- **Embrace Change**: Plan for pivots based on learnings
- **Feedback-Driven**: User feedback drives next iterations
- **Leverage Existing Assets**: Maximize use of current codebase

## Important Notes
- ⚠️ **DO NOT BEGIN CODING**
- 🎯 **MVP FIRST**: Stage 1 must deliver working software
- 📊 **MEASURE EVERYTHING**: Define metrics for each stage
- 🔄 **ITERATE BASED ON FEEDBACK**: Plan for continuous improvement
- 🔍 **UNDERSTAND EXISTING CODE**: Thoroughly analyze current codebase before planning
- 📋 Ensure core PRD requirements covered across all stages
- 🧪 Test coverage grows with each iteration
- 📝 Documentation evolves with the product
- 👥 User feedback drives development priorities
- 🔗 Integrate seamlessly with existing application architecture

## Example MVP Features (Reference Only)
For a typical web application:
- User registration/login (basic)
- Core functionality (1-2 main features)
- Basic data persistence
- Minimal viable UI
- Essential error handling
- Basic security measures
- Deployment pipeline
- Integration with existing user management (if applicable)
- Leveraging existing database/API infrastructure

Remember: The goal is to get a working product in users' hands quickly, then iterate based on real feedback rather than assumptions. Always start by understanding what already exists in the codebase to build upon existing foundations efficiently.

DO NOT START CODING.
JUST PERSIST THE PLAN AND THAT'S IT.