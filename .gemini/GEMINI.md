# Coding Guidelines

These guidelines aim to maintain code quality, consistency, and readability across our codebase.
Ask me questions if any feature/development requirement is unclear.

---
## IMPORTANT AND MUST BE FOLLOWED
- Always (strictly, most importantly, highest priority, must be followed in any condition) keep a check on the number of lines in the file. If the file exceeds the limit of 800 lines, break it down into multiple files.
- You must have a strict test driven development approach.
- You must implement robust logging and exception handling.
- Do not be lazy. Implement full feature/requirement which was requested.
- Be transparent about scope of your work and clearly and bluntly mention what are all the tasks you peformed and what tasks you missed and why you missed it.
- Remember to create .gitignore if not already created.
- You must create all the input data for testing in test_data folder.
- You must create any debug scripts, temporary scripts, test data generation scripts or any scripts of such sort in scripts folder. 
- The root of the project directory should be kept clean as much as possible.
- Any outputs or reports should be created in the resources/reports folder.

## Python Project Rules
- Create pyproject.toml if not already created.
- Use venv for dependency management.
- Do not use black, flake8 or mypy or any other dedicated tool to check code formatting and linting.
- If you are just starting with a new project, then always remember to create the src/<project_name> directory so that you can later deploy the application on PyPI without any challenges.

## 🚀 **Core Principles**

1. **Preserve Functionality**  
   Ensure new code does not introduce regressions or alter existing behavior without explicit justification.

2. **Align with Design System**  
   Review established style, layout, and UX principles before proposing changes. Avoid deviating from the current design guidelines.

3. **Iterate on Existing Code**  
   Prefer extending or refactoring existing implementations over creating new ones from scratch.

4. **Simplicity Over Complexity**  
   Always seek the simplest solution that meets requirements. Avoid unnecessary patterns or abstractions.

5. **Consistent Logging**  
   Implement balanced, verbose logging — but avoid logging opaque structures (e.g., raw dictionaries or lists).

6. **Incremental Refactoring**  
   Do not introduce new patterns or technologies when fixing bugs; exhaust existing approaches first. If a new pattern is required, remove the old implementation to prevent duplication.

7. **Environment Awareness**  
   Ensure code handles development, testing, and production environments appropriately (e.g., configuration via `.env`).

8. **Focused Scope**  
   Only modify code relevant to the task. Do not touch unrelated areas or files.

9. **Testing**  
    You should follow strict test-driven development.
    Always write test cases for your new developed code. Use mock, patch etc and write test cases to have maximum coverage.

10. **README.md**  
    Make a habit to keep a check on the README.md. Whenever you write a feature or develop a piece of code remember to also update the README.md if applicable.

---

## ✅ **General Code Hygiene**

1. **Meaningful Naming**  
   - Use descriptive names (`calculateInvoiceTotal()` vs. `calcInvTot()`).  
   - Follow naming conventions: `camelCase` for variables/functions, `PascalCase` for classes.
   - Create docstring for classes and functions.

2. **Avoid Deep Nesting**  
   - Use early returns to reduce nested conditionals.  
   - Extract nested logic into helper functions.

3. **Comment Sparingly**  
   - Comment only where code isn’t self-explanatory.  
   - Focus on the _why_ rather than the _what_.  
   - Use docstrings or structured comments for public APIs.

4. **Don’t Repeat Yourself (DRY)**  
   - Consolidate common logic into reusable functions or classes.

5. **Modular and Testable**  
   - Write pure or side-effect-limited functions to facilitate testing.

6. **Granular Functions**  
   - Break long functions (> 200 lines) into smaller, single-responsibility units.

7. **Test Coverage**  
   - Write thorough unit and integration tests for all major functionality.  
   - Mock data only in test code—never in development or production.

---

## 📏 **Size and Length Guidelines**

| Entity      | Recommended Size      | Absolute Maximum     | Notes                                        |
|-------------|-----------------------|----------------------|----------------------------------------------|
| **Function**| 30–50 lines           | 80 lines             | Single Responsibility Principle              |
| **Class**   | 200–300 lines         | —                    | One clear responsibility per class           |
| **File**    | 500–800 lines         | —                    | Group by feature; name by content            |
| **Line**    | ≤ 100–120 characters  | —                    | Conform to linter settings                   |

---

## 🗂️ **Project Structure**

- **Feature Grouping**: Organize files by functionality, not type.  
- **Clean Imports**: Avoid long import paths through logical package structuring.  
- **Tests Placement**: Keep test files close to the code they verify (e.g., `src/` alongside `tests/`).

```
