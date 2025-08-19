# Development Workflow: A Test-First Guide

This document outlines our standard Test-Driven Development (TDD) process. The fundamental rule is to write a failing test *before* writing implementation code. This ensures all functionality is testable and robust. Always run the entire test suite to prevent breaking existing features (regressions).

The process is a simple, repeating cycle: **Red -> Green -> Refactor**.

---

### 1. 🔴 RED: Write a Failing Test

First, prove that the feature is missing by writing a test for it.

*   **Define a Requirement:** Isolate the smallest piece of functionality to build.
*   **Write the Test:** Create an automated test that describes this requirement.
*   **Confirm Failure:** Run the test suite. The new test **must fail**. If it passes, the test is flawed or the functionality already exists.

### 2. 🟢 GREEN: Make the Test Pass

Next, write the absolute minimum amount of code needed to make the test pass.

*   **Write Simple Code:** Implement the logic just to satisfy the test. Avoid adding extra features.
*   **Run All Tests:** Execute the *entire* test suite. All tests, new and old, must now pass. If any old tests fail, your new code has caused a regression that must be fixed.

### 3. 🔵 REFACTOR: Clean Up the Code

With the safety of passing tests, you can now improve the code's quality.

*   **Improve the Code:** Enhance the implementation by making it cleaner, more readable, or more efficient. **Do not change the tests.**
*   **Run All Tests Again:** After refactoring, run the full test suite to guarantee you haven't broken anything.

**Repeat this cycle** for each piece of functionality until the entire feature is complete.

---

### Final Checklist

Once all tests pass and the feature is complete:

- [ ] The code is clean, reviewed, and documented.
- [ ] The feature is ready for integration.