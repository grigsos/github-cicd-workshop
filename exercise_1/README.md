# Github Actions - Hello World

This exercise introduces you to GitHub Actions, a powerful tool to automate, customize, and execute your software development workflows right in your repository.

### Documentation link
[GitHub Actions Overview](https://docs.github.com/en/actions/using-workflows/about-workflows)

## Files to Work With

1. **exercise_1.yaml**: A Python script with style issues.


## Task

You are required to set up a basic workflow in your GitHub repository that triggers on every push to the repository and prints "Hello, World!".

## Instructions

### Step 1: Create the Workflow Directory

1. Create a new directory by clicking on "Add folder" -> ".github".
2. Within that directory create another directory by clicking on "Add folder" -> "workflows".
3. Copy paste exercise_1.yml file into the workflows directory.


## Explanations of every variable in the exercise_1.yml file
- name: Defines the name of the workflow. It appears as such on GitHub under the "Actions" tab.
- on: Specifies when the workflow should run. `push` means it will run every time code is pushed to any branch in the repository.
- jobs: Jobs are tasks that run sequentially or in parallel during the workflow execution. Here, `say_hello` is a job.
- runs-on: Determines which virtual environment the job runs on. `ubuntu-latest` points to the latest available Ubuntu virtual machine provided by GitHub.
- steps: These are the individual tasks that the job executes. Here, it consists of a step to print "Hello, World!".