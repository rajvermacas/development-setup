# Test Feature End-to-End

Generate and run a comprehensive end-to-end test for recently developed features using session context analysis.

## Description

This command analyzes the current session's development context and creates an intelligent test client that:
- Starts the actual application/server
- Tests complete user journeys (not isolated functions)  
- Validates the new feature works in real application context
- Includes error scenarios and edge cases
- Provides clear pass/fail results
- **Ensures 100% test success rate with detailed failure analysis and resolution**

## Instructions

Based on the optional arguments provided ($ARGUMENTS), analyze the recent development session and create a comprehensive END-TO-END test client.

### Context Analysis Strategy:
1. **Session Transcript Analysis**: Examine recent conversation history to understand what was built
2. **File Change Detection**: Analyze recently modified files to identify the feature scope
3. **Git History Review**: Check recent commits and diffs to understand code changes
4. **Project Structure Assessment**: Determine application type and testing approach

### Critical Configuration Requirement:
**DO NOT USE ANY DUMMY VALUES, MOCK-UPS, OR PLACEHOLDER CONFIGURATIONS**
- Identify all required configuration values (API keys, database URLs, ports, credentials, etc.)
- Explicitly ask the user to provide the exact values for these variables
- Wait for user input before proceeding with test creation
- Use only the actual values provided by the user in the test code
- If any required values are missing, stop and request them before continuing

### E2E Testing Requirements:

#### Application Startup:
- Detect application type (web server, API, CLI tool, desktop app)
- Start the application using appropriate commands with real configuration
- Wait for application readiness (health checks, port listening)
- Ensure proper cleanup and process termination

#### Complete User Journey Testing:
- **Web Applications**: Start server → Test full user workflows via HTTP requests
- **APIs/Backend**: Start server → Test complete business processes through multiple endpoints  
- **CLI Applications**: Execute tool with realistic command sequences
- **Desktop Apps**: Launch application → Test complete feature workflows

#### Comprehensive Validation:
1. **User Experience Testing**: Validate the feature from user perspective
2. **Data Flow Validation**: Ensure data moves correctly through the entire system
3. **Integration Testing**: Verify feature works with existing components
4. **Business Logic Testing**: Confirm feature accomplishes intended purpose
5. **Error Handling**: Test failure modes and recovery scenarios
6. **Performance Validation**: Ensure acceptable performance under normal load

### Test Client Creation:
Create the most appropriate test client based on technology stack:
- **Python**: Use `requests` for APIs, `subprocess` for application management
- **Node.js**: Use `fetch` or `axios` for complex web application testing
- **Bash**: Use `curl` for HTTP testing, process management for applications

### Configuration Values Collection:
Before creating the test client, identify and collect:
- Database connection strings
- API endpoints and base URLs
- Authentication credentials (API keys, tokens, usernames/passwords)
- Port numbers and host configurations
- Environment-specific settings
- Third-party service credentials
- File paths and directory locations
- Any other configuration parameters required for testing

### **Testing Role & Detailed Reporting:**

#### Testing Role Definition:
- **Role**: End-to-End Tester (NOT a developer)
- **Responsibility**: Test execution, analysis, and reporting
- **Limitation**: Do NOT make code changes to fix issues
- **Process**: Document failures for developer handoff

#### Test Execution & Analysis Process:
- **Execute comprehensive E2E tests** with provided configuration
- If any test fails during execution:
  1. **Immediate Documentation**: Record the failure with full context
  2. **Root Cause Analysis**: Investigate and document the underlying cause
  3. **Impact Assessment**: Determine scope and severity of the issue
  4. **Developer Handoff**: Prepare detailed report for code remediation
  5. **No Code Modifications**: Do NOT attempt to fix code issues

#### Comprehensive Test Report Generation:
Create detailed reports in `.dev-resources/report/` directory:

**Required Report Files:**
1. **`e2e_test_execution_report.md`** - Main execution summary with pass/fail status
2. **`test_results_detailed.json`** - Machine-readable test results
3. **`failure_analysis_for_developers.md`** - **Critical developer handoff document with root cause analysis**
4. **`configuration_audit.md`** - Configuration values used and validation results
5. **`performance_metrics.json`** - Performance data collected during testing

**Report Content Requirements:**
- **Executive Summary**: Overall test status, features tested, pass/fail results
- **Test Coverage Matrix**: Which features/journeys were tested and their status
- **Performance Metrics**: Response times, resource usage, throughput measurements
- **Configuration Audit**: All configuration values used (sanitized for security)
- **Detailed Failure Analysis for Developers**: 
  - Root cause investigation findings
  - Code locations where issues were detected
  - Specific error messages and stack traces
  - Recommended investigation areas for developers
  - Impact assessment and severity classification
- **Environment Details**: System info, versions, dependencies used during testing
- **Testing Recommendations**: Suggestions for additional test coverage
- **Test Execution Timeline**: Start time, duration, completion time for each test phase

#### Report Directory Structure:
```
.dev-resources/
└── report/
    └── {feature-name}/
        ├── e2e_test_execution_report.md
        ├── test_results_detailed.json
        ├── failure_analysis_for_developers.md
        ├── configuration_audit.md
        ├── performance_metrics.json
        └── artifacts/
            ├── screenshots/ (if applicable)
            ├── logs/
            └── test_data/
```

**Feature Folder Naming Convention:**
- Use kebab-case for folder names (e.g., `user-authentication`, `payment-flow`, `api-endpoints`)
- If testing multiple features simultaneously, use `multi-feature-{timestamp}` format
- For session-wide testing without specific feature focus, use `session-analysis-{timestamp}`

### Execution Requirements:
- Save test client as `e2e_feature_test.py`, `e2e_feature_test.sh`, or `e2e_feature_test.js` in tests/ directory
- Make the test self-contained and executable with real configuration
- Include detailed logging and clear pass/fail output
- Execute the test immediately after creation using actual values
- **Document all test results (pass AND fail) comprehensively**
- **Perform thorough root cause analysis for any failures**
- **Create developer-ready failure analysis reports**
- **Create feature-specific report directory** in `.dev-resources/report/{feature-name}/`
- Generate comprehensive reports in the feature-specific directory
- Report comprehensive results with detailed analytics

### Arguments Usage:
- If $ARGUMENTS provided: Use as specific feature context or test focus
- If no arguments: Analyze entire recent session for feature changes

## Example Usage:
- `/test-feature` - Analyze recent session and test all new features
- `/test-feature user authentication` - Focus testing on user authentication features
- `/test-feature api endpoints` - Concentrate on API endpoint testing
- `/test-feature payment flow` - Test payment-related functionality

## Output:
- Clear identification of features being tested
- List of required configuration values and user prompts for each
- Application startup confirmation with real configuration
- Test execution progress with detailed logging
- **Complete test results documentation (both passing and failing tests)**
- **Comprehensive root cause analysis for any failures**
- **Developer-ready failure reports for code remediation**
- **Professional test report generation in `.dev-resources/report/{feature-name}/` directory**
- Cleanup confirmation

**Testing Role Clarity**: This command operates as a dedicated E2E tester that executes comprehensive tests and provides detailed failure analysis for developer handoff. The tester does NOT modify code but focuses on thorough testing, analysis, and professional reporting to enable effective developer remediation.

**Important**: This creates TRUE end-to-end tests that validate complete user journeys in the running application using real configuration values, not unit tests of isolated functions or dummy data.