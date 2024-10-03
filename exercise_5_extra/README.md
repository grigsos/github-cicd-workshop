# Github Actions - Making your own Actions and scheduling workflows

In this tutorial, you will learn how to create your personal GitHub Action and schedule workflows to run at specific times.

### Documentation link
[GitHub Actions - Your Own Action](https://docs.github.com/en/actions/creating-actions/creating-a-composite-action)

[GitHub Actions - How to set outputs](https://docs.github.com/en/actions/creating-actions/creating-a-composite-action#creating-an-action-metadata-file)


## Task

You are required to set up a basic workflow in your GitHub repository that run on a schedule and uses a custom action to print a message. The actions should have an output, that is the same as the input. Then you need to create a conditional step that only runs if the output is the same as the input.

## Instructions
> **Warning** 
>
> The scheduled job will only run on `default` branch.

### Step 1: Create the Workflow File

This time you are starting from scratch! You need to create a new workflow file in the `.github/workflows` directory. The workflow should:
1. On merge to master, run the every 5 minutes
2. Use a custom action defined in `.github/actions` to echo a message `"Hello, {INPUT}"`, where the `{INPUT}` is passed as an argument to the action from the workflow file.

### 2. Validate the Workflow
After completing the workflow file and Dockerfile:
- Commit your changes.
- Create a pull request.
- (Optional) Bypass this and push to main directly due to necessity of the `default` branch.
- Merge PR into the master branch.

