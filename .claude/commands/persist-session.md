# Session Persistence Instructions

## Objective
Update the session summary using the established template provided at `~/projects/claude-code-templates/session-scratchpad-template.md` to maintain chronological project evolution and enable seamless continuity across conversations.

**IMPORTANT**   
Read file `~/projects/claude-code-templates/session-scratchpad-template.md`

## File Management Protocol

### Line Count Monitoring
1. **Check Line Count**: Always verify the current line count in `.dev-resources/context/session-scratchpad.md`
2. **Token Limit Threshold**: If the file exceeds **600 lines**, initiate compaction process
3. **Compaction Strategy**: When threshold is reached, merge sessions 1 to N-1 (where N is the latest session) to reduce token consumption

### Compaction Process
When the session scratchpad exceeds 600 lines:

1. **Preserve Latest Session**: Keep the most recent session (Session N) intact with full details
2. **Merge Historical Sessions**: Combine sessions 1 through N-1 into a consolidated "Historical Sessions Summary"
3. **Maintain Key Information**: 
   - Preserve major milestones and decisions from merged sessions
   - Keep critical technical architecture decisions
   - Retain important context that affects current work
4. **Update Structure**: Replace individual historical session entries with a condensed summary section

## Task
Please update the session summary file following the structured template to capture our current session progress.

### Instructions:
1. **Line Count Check**: 
   - First, count the lines in the current `session-scratchpad.md` file
   - If > 600 lines, perform compaction before adding new session

2. **Load Existing Context**: 
   - Read the current `session-scratchpad.md` file from `.dev-resources/context/`
   - If this is the first session, use the template structure provided

3. **Update Session Log**:
   - Add a new session entry at the **bottom** of the Chronological Progress Log
   - Use ascending chronological order (oldest to newest)
   - Include timestamp (IST - Indian Standard Time), focus area, accomplishments, and technical details

4. **Maintain Template Structure**:
   - Follow the established markdown template format
   - Replace `[to be provided by the agent]` placeholders with actual content
   - Preserve the chronological narrative of project evolution

5. **Update Current State Sections**:
   - Refresh "Current Project State" with latest status
   - Update "Technical Architecture" if changes occurred
   - Revise "Next Steps & Considerations" based on current progress

6. **Preserve Project History**:
   - Keep all previous session entries intact (unless compaction is needed)
   - Show the evolution and decision-making process over time
   - Maintain context of how we arrived at the current state

### Template Reference
Use the session summary template structure with these key sections:
- Session Overview (brief current session description)
- Historical Sessions Summary (if compacted - consolidated overview of sessions 1 to N-1)
- Chronological Progress Log (ascending order, latest at bottom, or just current session if compacted)
- Current Project State (✅ Completed, 🔄 In Progress, ❌ Issues)
- Technical Architecture & Important Context
- Next Steps & Considerations (flexible, non-prescriptive)

### Compaction Template Structure
When file exceeds 600 lines, use this structure:

```markdown
## Historical Sessions Summary
*Consolidated overview of Sessions 1-[N-1] - compacted for token efficiency*

### Key Milestones Achieved
- [Major accomplishment 1 with session reference]
- [Major accomplishment 2 with session reference]
- [Critical decision points and rationale]

### Technical Evolution
- [Important architectural decisions]
- [Technology stack changes]
- [Performance improvements]

### Lessons Learned
- [Key insights from historical sessions]
- [Patterns that emerged]
- [Approaches that worked/didn't work]

---

## Current Session (Session [N])
*Full detailed entry for most recent session*
[Standard session format with full details]
```

### Success Criteria
The updated summary should:
- Maintain optimal file size (under 600 lines when possible)
- Show clear project evolution through chronological sessions
- Enable a new session to understand the complete journey
- Provide technical context without requiring re-explanation
- Suggest logical next steps without being overly directive
- Preserve critical historical context even when compacted

---

**Execute this update now to preserve our session progress in the established chronological format. Check line count first, perform compaction if needed, then save the updated summary to `.dev-resources/context/session-scratchpad.md`.**