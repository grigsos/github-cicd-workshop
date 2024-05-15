# CI/CD with GitHub Actions and Docker

## Overview
This exercise aims to demonstrate how to set up a CI/CD pipeline using GitHub Actions. We will build a Docker image, use secrets for sensitive information, and trigger the workflow on merging into the master branch.

## Instructions

### 1. Set Up GitHub Secrets
You need to set up the following secrets in your GitHub repository:
- `DOCKER_USERNAME`: Your Docker Hub username.
- `DOCKER_PASSWORD`: Your Docker Hub password.

### 2. Complete the Workflow File
The `ci-cd.yml` file in the `.github/workflows` directory is partially filled out. You need to complete it to:
- Log in to Docker Hub using the secrets.
- Build and push the Docker image to Docker Hub.

### 3. Complete the Dockerfile
The `Dockerfile` in the repository is mostly complete. You need to ensure it has the necessary commands to:
- Set up the working directory.
- Copy the necessary files.
- Install dependencies.
- Expose the correct port.
- Define the command to run your application.

### 4. Validate the Workflow
After completing the workflow file and Dockerfile:
- Commit your changes.
- Create a pull request and merge it into the master branch.

The GitHub Actions workflow should run automatically, build the Docker image, and push it to Docker Hub.

