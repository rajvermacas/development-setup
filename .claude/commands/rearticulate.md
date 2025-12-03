---
allowed-tools: Glob, Grep, Read, WebFetch, TodoWrite, WebSearch, BashOutput, KillShell, mcp__ide__getDiagnostics, mcp__ide__executeCode, mcp__fetch__fetch, Bash, AskUserQuestion, Skill, SlashCommand
argument-hint: [requirement]
description: Rearticulate the requirements in your own words.
---


# Explore existing codebase
Use sub-agent @agent-explore to explore the current state of the project and the existing codebase.

# Re-articulate requirements in your own words
Can you please think hard and re-articulate to me the concrete and specific requirements I have given to you using your own words so that I can evaluate that you have understood the requirements correctly.  
Include what those specific requirements are and break down each requirement into small manageable tasks.

# Plan implementation for each requirement
Use sub-agent @agent-plan to understand what actions you need to take, what exact steps you need to take to implement my requirements, and a short plain text description of how you are going to complete the task and also clearly include `what, how and why` part of the action you are planning to take.

# Important steps to be followed in the exact order
Re-organise the requirements into their logical & sequential order of implementation including any dependancies.  
Create an execution flow of the requirement in ascii diagram.  
Include how you will be able to effectively use Sub-Agents and what will be done in series and what can be done in parallel. 
Clearly mention all the sub-agents that are going to be used and what each sub-agent is going to do.   
Clearly mention all the files that are going to be created, modified or deleted.  
Finally finish with a complete TODO list.  
Wait for my confirmation on the plan.
