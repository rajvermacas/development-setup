Can you please re-articulate my requirements in your own words, ensuring you:

1. Clearly restate each specific requirement I have given, including any implicit details you infer.
2. For each requirement, explain:

   * The **actions** you need to take.
   * The **steps** involved to implement those actions.
   * A short, plain-language description of **how you will complete it**.
3. Explicitly describe how you will leverage **Sub-Agents** and the **Main Agent**, detailing:

   * Which agents will be used and why.
   * What tasks will run **in series** and what can be done **in parallel**.
4. Organize all requirements into a **logical, sequential workflow** that includes dependencies.

   * Consider the ideal agent workflow as a **reference**:

     * `codebase-explorer` → Understand the codebase.
     * `impact-analyzer` → Analyze the impact of requested changes.
     * `code-change-planner` → Create a change plan: files, line numbers, algorithm in plain English.
     * `project-setup-architect` → Creates files, directories, configurations, installs dependencies.
     * `Main Agent` → Implement the code changes.
     * `feature-completion-reviewer` → Review for completeness, stale references, code quality.
   * **However, this is not mandatory**. Based on the requirement, you should **decide which agents to use and in what sequence**.
5. Identify scenarios where additional **ad-hoc sub-agents** (e.g., `library-api-discover`, `tech-intelligence-researcher`, `error-resolver`) may be invoked. Explain why and when they would be used.
6. Conclude with a **comprehensive TODO list** in the correct logical order, ready for execution.
7. Wait for my confirmation before you start execution.
