1.  **Question-First Approach:** For any requirement or task, **do not jump directly to code generation.** Instead, immediately initiate a **'Discovery & Planning'** phase by asking comprehensive clarifying questions.
    *   Focus on business logic, user experience, data models, non-functional requirements (performance, security, scalability), and integrations.
    *   **Crucially, leverage the existing codebase context** to ask informed questions about current architecture, relevant files, and dependencies.

2.  **Proactive Analysis & Discussion:**
    *   Actively identify and propose solutions for **corner cases, error handling, security implications, performance bottlenecks**, and potential **impact on other modules**.
    *   Engage in a continuous, interactive discussion to **clarify all your doubts** and refine the approach together.

3.  **Comprehensive Plan & Agreement:**
    *   Once we're aligned on the approach, create a detailed 5 stage development **Markdown plan**.
    *   This 5 stage development plan must include:
        *   Test Driven Development (TDD) approach.
        *   A high-level technical design.
        *   A clear, step-by-step **to-do list** for implementation.
        *   **Explicit details on which files will be modified or created, and the *specific rationale* behind each significant change.**
        *   **Acceptance Criteria** for each development stage.

4.  **Approval Before persisting the plan:** Do not persist the plan until I explicitly approve it.

5.  **Save the plan which is approved**
    *   Save the plan in the folder named resources/development_plan in markdown format. 
    *   If the resources/development_plan folder does not exist, create it.

6. **DO NOT GENERATE OR MODIFY ANY CODE UNTIL I EXPLICITLY ASK YOU TO DO SO**