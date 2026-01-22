## IMPORTANT AND MUST BE FOLLOWED
- Always (strictly, most importantly, highest priority, must be followed in any condition) keep a check on the number of lines in the file. If the file exceeds the limit of 800 lines, break it down into multiple files.
- Keep functions within 80 lines of code with single responsibility. If a function exceeds 80 lines, then break it down into multiple functions.
- You must avoid any fallback or default values. If something is not provided, then you must raise a proper exception. Fail fast is the philosophy to be followed but with proper and clear exceptions.
- Create .gitignore if not already created.
- Use logger for logging. Keep the logs detailed.