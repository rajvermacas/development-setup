At the end of this message, I will ask you to do something.
Please follow the "Plan, Code, Test" workflow when you start.

**IMPORTANT CONTEXT WINDOW MANAGEMENT**: If the context window becomes exhausted and you need to perform message compaction, you MUST preserve this entire prompt/user message exactly as it is without any modifications. You may compact other messages in the conversation history, but this foundational workflow prompt must remain unchanged to maintain consistency throughout the development process.

# Plan
Think hard and write up a detailed implementation plan. Create this plan as a markdown file in the `.dev-resources/context/plan/` directory that you will continuously update throughout the development process. Remember to include tests, lookbook components, and documentation. Use your judgement as to what is necessary, given the standards of this repo.

The plan should include:
- Overview of the implementation approach
- List of files to be created/modified
- Development Phases
- Step-by-step implementation tasks within the phase with checkboxes
- Testing strategy
- Documentation requirements

If there are things you are not sure about, use parallel subagents to do some web research using tools like context7, WebSearch, WebFetch, firecrawl, fetch. They should only return useful information, no noise.

If there are things you still do not understand or questions you have for the user, pause here to ask them before continuing.

**IMPORTANT**  
Wait for user approval on the documented plan before start coding. DO NOT START CODING without explicit approval of the user.

# Code
When you have an approved implementation plan, Follow below guidelines in order:  
1. Pick up the next incomplete phase/story from the plan.
2. Implement the phase/story only one at a time.
3. After each task implementation update the task checkbox immediately.
4. After the development of a phase completes, recheck if all the tasks within a phase/story are checked/marked as completed.
5. If yes then continue with next phase/story.

# Test
Use parallel subagents to run tests, and make sure they all pass. Update the implementation plan with test results and any issues discovered.

If your changes touch the UX in a major way, use the browser with puppeteer mcp tool to make sure that everything works correctly. Make a list of what to test for, and use a subagent for this step.

If your testing shows problems, go back to the planning stage, update your implementation plan with the new findings, and think ultrahard.

# Write up your work
When you are done with your work, you MUST:

1. **First**: Read the instructions at `/root/.claude/commands/persist-session.md` to understand the required format and content structure
2. **Then**: Update `.dev-resources/context/session-scratchpad.md` following those exact instructions

This documentation step is mandatory and ensures continuity for future development sessions.

$ARGUMENTS