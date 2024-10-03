# Github Actions - Continous deployment with GitHub Actions to Docker Hub

This exercise aims to demonstrate how to set up a CI/CD pipeline using GitHub Actions. We will build a Docker image, use secrets for sensitive information, and trigger the workflow on merging into the master branch.


### Documentation link
[GitHub Actions Secrets](https://docs.github.com/en/actions/security-guides/using-secrets-in-github-actions)

## Files to Work With

1. **Dockerfile**: The dockerfile that is responsible for building a simple API server
2. **app.py**: The API server backend
2. **requirements.txt**: Required dependencies to build the API server

## Task

You are required to set up a basic workflow in your GitHub repository that triggers on every merge into `master` that builds a Docker image and pushes it to Docker Hub

## Instructions

### 1. Set Up GitHub Secrets
You need to set up the following secrets in your GitHub repository:
- `DOCKER_USERNAME`: Your Docker Hub username.
- `DOCKER_TOKEN`: Your Docker Hub password.

Generate the above by creating an account in Docker then finding instructions on how to generate a token [here](https://docs.docker.com/security/for-developers/access-tokens) 

### 2. Complete the Workflow File
The `workflow.yaml` file in the current directory is partially filled out. You need to complete it and move it to `.github/workflows` to and have it:
- Log in to Docker Hub using the secrets.
- Build and push the Docker image to Docker Hub.

### 3. Validate the Workflow
After completing the workflow file and Dockerfile:
- Commit your changes.
- Create a pull request.
- (Optional) Allow your workflow to run on every push to PR temporarily.
- Merge PR into the master branch.

The GitHub Actions workflow should run automatically, build the Docker image, and push it to Docker Hub.

