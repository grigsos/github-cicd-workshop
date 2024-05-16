# Github Actions - Making your own Actions and scheduling workflows

In this tutorial, you will learn how to create your personal GitHub Action and schedule workflows to run at specific times.

## Task

You are required to set up a basic workflow in your GitHub repository that run on a schedule and uses a custom action to print a message.

## Instructions
> **Warning** 
>
> The scheduled job will only run on `default` branch.

### Step 1: Create the Workflow File

This time you are starting from scratch! You need to create a new workflow file in the `.github/workflows` directory. The workflow should:
1. On merge to master, run the every 5 minutes
2. Use a custom action defined in `.github/actions` to echo a message "Hello, <INPUT>", where the <INPUT> is passed as an argument to the action from the workflow file.

### 2. Validate the Workflow
After completing the workflow file and Dockerfile:
- Commit your changes.
- Create a pull request.
- (Optional) Bypass this and push to main directly due to necessity of the `default` branch.
- Merge PR into the master branch.

