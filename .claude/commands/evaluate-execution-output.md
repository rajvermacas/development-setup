---
description: Write evaluation script, run script and test the behaviour, share observed output and summarise the understanding of the behaviour
---

1.  **Create Evaluation Script:**
    *   Write a script based on my instructions to trigger the evaluation conditions.
    *   Choose the appropriate language/extension (e.g., `.py`, `.sh`).
    *   Save it to `resources/evaluations/scripts/` (create if needed) with a descriptive name (e.g., `evaluate_<subject>_<goal>.<ext>`).

2.  **Execute Script & Capture Output:**
    *   Run the script from Step 1 using the correct command.
    *   Capture the *complete raw output* (stdout, stderr, logs, exit codes, side-effects). Note execution errors.

3.  **Generate Markdown Report:**
    *   Create a Markdown report in `resources/evaluations/reports/` (create if needed).
    *   Use a unique filename (e.g., `<subject>_evaluation_<timestamp>.md`).

4.  **Report Content:** Include the following sections:
    *   **Evaluation Goal:** State my specific instructions for the evaluation.
    *   **Execution Details:**
        *   Subject evaluated.
        *   Script filename used (`resources/evaluations/scripts/...`).
        *   Command used to run the script.
    *   **Raw Output:** Include the full captured output within code blocks (```).
    *   **Detailed Observations:** Analyze the output based on the **Evaluation Goal**. Address:
        *   How results align with the goal.
        *   Observed behavior vs. Expected behavior (if applicable).
        *   Correctness and any deviations found.
        *   Alignment with relevant **Best Practices**.
        *   How **Corner Cases** or **Edge Behaviors** were handled (or signs of issues).
        *   Any **Anomalies** or other noteworthy points.

5.  **Overall Findings:**
    *   Add a summary section at the end.
    *   Highlight key findings related to the goal.
    *   Note significant patterns, strengths, or weaknesses observed.
    *   Suggest potential next steps, further evaluations, or improvements.

**UserRequirement:**
Given below is the requirement for the evaluation:  
