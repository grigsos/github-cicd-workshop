# Github Actions - Python CI Workflow Exercise

Create a GitHub Actions workflow that is triggered on pull requests to the master branch. This workflow should run unit tests and lint Python code.

### Documentation link
[GitHub Actions Triggers](https://docs.github.com/en/actions/using-workflows/triggering-a-workflow)

## Files to Work With

1. **bad_code.py**: A Python script with style issues.
2. **test_bad_code.py**: Contains unit tests for `bad_code.py`.

## Task

Complete the provided `lint_and_test.yaml` to run unit tests and lint checks on pull requests to master.

## Instructions

### Step 1: Complete the Workflow

Refer to the partial `lint_and_test.yaml` and add necessary steps to execute the Python unit tests and linting.

### Step 2: Commit and Push

Commit your changes and open a pull request to the master branch to see the workflow in action.

### Step 3: Check the issues

After seeing the workflow run, check the logs of the run. Based on the issues found, fix the code and commit the changes. The workflow should run again and show that the issues have been resolved.

## Explanation of New Workflow Components

- `pull_request`: Triggers the workflow on pull requests to the master branch.
- `working-directory`: Sets the working directory for the job steps. No need to use quotes for the path and the path is relative to the repository root.
## Added commands to run the tests and linting
- black:
   - `black --check .` Runs the black code formatter in check mode.
   - `black .` Runs the black code formatter to format the code.
- flake8:
    - `flake8 .` Runs the flake8 linter and outputs any issues.
- pytest: Runs the unit tests in the repository.
   - `pytest exercise_2/test_code.py` Runs the unit tests in the `test_code.py` file.
   - `pytest exercise_2` Runs all the unit tests in the `exercise_2` directory.