# Github Actions - Multi stage CD to protected environments

In this tutorial, you will learn how to set up a basic CI/CD pipeline using GitHub Actions. We'll walk through a simple example where we define a workflow to build and deploy our application in multiple environments.

### Documentation link
[GitHub Actions Environments](https://docs.github.com/en/actions/deployment/targeting-different-environments/using-environments-for-deployment)

## Task

You are required to set up a basic workflow in your GitHub repository that triggers on every merge into `master`  to build and deploy an application in protected environments as well as chaining jobs one after another to show dependencies between jobs.

## Instructions

### Step 1: Create protected environment

Got to the GitHub repo you have created
1. Settings
2. Environments
3. New environment => give it a name (Such as dev/int/prd)
5. Assing yourself as a required reviewer
6. (Optional) Untick the administrator rule bypass

Repeat for 3 different environments

### Step 2: Create the Workflow File

The `workflow.yaml` file in the current directory is partially filled out. You need to complete it and move it to `.github/workflows` to and have it:
1. On merge to master, run the workflow
2. Create 2nd job and the second job depend on the first one completing
3. The 2nd job has to deploy to different environments defined by GitHub
4. The job  need to be manually approved by reviewers to get deployed to an environment
5. The job needs to fail for all the environments if one of the deployments fail
6. The job has to only 1 deployment at a time (sequentially dev/int/prd)

### 2. Validate the Workflow
After completing the workflow file and Dockerfile:
- Commit your changes.
- Create a pull request.
- (Optional) Allow your workflow to run on every push to PR temporarily.
- Merge PR into the master branch.

