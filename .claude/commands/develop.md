# Development Session Prompt

## Variable Definitions
- **development_plan_file**: `$ARGUMENTS[0]` - Path to the development plan file
- **prd_document_file**: `$ARGUMENTS[1]` - Path to the product requirement document file

## Argument Parsing Instructions
Extract and validate the following arguments from `$ARGUMENTS`:
1. `development_plan_file` - Must be a valid file path to the development plan document
2. `prd_document_file` - Must be a valid file path to the product requirements document

**Validation**: Ensure both files exist and are accessible before proceeding.

---

## Session TODO List (CRITICAL FIRST STEP)

**MANDATORY**: Before starting any work, create and display a comprehensive TODO list. This serves as your session roadmap and progress tracker. It is very important to create the TODO items as per the task order mentioned below.  
1. Session context recovery  
2. Requirements and Development Plan Analysis  
    2.a. Read PRD  
    2.b. Read TDD  
    2.c. Read Development plan document  
3. Start Development  
4. Quality Assurance and Regression Testing  
5. Code Review Process  
6. Development Plan Update  
7. Repository Maintenance   
8. Session Persistence  
9. Version Control  

---

## Development Session Commands (Execute in Sequence - MANDATORY)

### 1. Session Context Recovery
Read `@resources/context/session-scratchpad.md` to understand:
- Previous session progress
- Current development state
- Any blocking issues or notes
- Where to resume work

### 2. Requirements and Development Plan Analysis
Execute the following sub-steps in order:

**2a.** Read and analyze the product requirements document at `prd_document_file`
- Extract key features and acceptance criteria
- Identify user stories and business requirements
- Note any dependencies or constraints

**2b.** Read and internalize the test-driven development methodology from `/root/.claude/commands/test-driven-development.md`
- Understand the TDD cycle (Red-Green-Refactor)
- Review testing standards and practices
- Prepare for test-first development approach

**2c.** Read and analyze the development plan file at `development_plan_file`  
- Current Status: Review implementation progress, completed stages, and active development phase  
- Technical Approach: Understand architecture decisions, technology stack, and integration patterns  
- Next Steps: Identify current stage requirements, pending tasks, and acceptance criteria  
- Blockers & Dependencies: Note any constraints, technical issues, or external dependencies  
- Success Metrics: Review completion criteria and quality standards for current stage  

### 3. Start Development
Following TDD principles, proceed with the next development stage as specified in `development_plan_file`
- Identify current stage requirements
- Break down stage requirements into specific, actionable tasks
- Organize by: tests to write, components to implement, integrations to build
- Plan test cases before implementation
- Begin development cycle
- Update todo completion status as you progress

### 4. Quality Assurance and Regression Testing
Ensure comprehensive test coverage:
- **New Feature Tests**: Verify all new functionality works as expected
- **Regression Tests**: Confirm existing features remain unbroken
- **Integration Tests**: Validate new code integrates properly with existing codebase
- **Edge Cases**: Test boundary conditions and error scenarios

**Success Criteria**: All tests (new + existing) must pass before proceeding.

### 5. Code Review Process
Execute the review workflow by reading and following instructions from:
```
/root/.claude/commands/review.md
```
- Perform self-review checklist
- Validate code quality standards
- Ensure documentation is updated
- Confirm all acceptance criteria are met

### 6. Development Plan Update
**Only if** code review passes with final verdict "APPROVED":
- Update progress tracking in `development_plan_file`
- Mark completed todos as done
- Update status indicators
- Note any relevant observations for future sessions

### 7. Repository Maintenance
Update `.gitignore` file to exclude:
- Build artifacts and temporary files
- IDE-specific configuration files
- Environment-specific secrets or configs
- Cache directories and log files
- Any other non-essential files

### 8. Session Persistence
Execute session state preservation by reading and following:
```
/root/.claude/commands/persist-session.md
```
- Save current development state
- Document any in-progress work
- Note next steps for future sessions
- Update session scratchpad

### 9. Version Control - This is the last step. DO NOT PERFORM IT EARLY.
Create a meaningful commit with:
- **Clear commit message** describing changes made
- **Reference to related requirements** or user stories
- **Summary of tests added/modified**
- **Any breaking changes noted**

**Commit Message Format**:
```
feat: [brief description of feature]

- Implemented [specific functionality]
- Added tests for [test coverage areas]
- Updated documentation for [changes]

Closes: [requirement/story reference]
```

---

## Session Completion Protocol

Upon completing all TODO items:

### ⚠️ CRITICAL RESTRICTIONS
1. **DO NOT PUSH CODE** to any remote repository
3. **WAIT FOR EXPLICIT INSTRUCTIONS** before proceeding further

### Final Status Report
Provide a brief summary including:
- ✅ Tasks completed successfully
- 🔍 Current development stage status
- 📋 Next planned development stage (without starting it)
- ⏸️ Awaiting further instructions

---

## Error Handling
If any step fails:
1. **Document the failure** in session notes
2. **Attempt reasonable troubleshooting**
3. **Report the issue** and await guidance
4. **Do not skip subsequent steps** unless explicitly instructed

## Success Metrics
- All tests passing (100% success rate)
- Code review approval
- Clean commit history
- Updated documentation
- Ready state for next development iteration