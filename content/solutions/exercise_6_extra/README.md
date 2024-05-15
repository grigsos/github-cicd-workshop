# Stress Test Workflow in Gitpod

This repository contains a GitHub Actions workflow designed to heavily tax the runner using the `stress-ng` tool. This README provides instructions on how to set up this workflow in a Gitpod workspace and observe the runner's processing.

## Prerequisites

To run this workflow, you will need:

- A GitHub account
- A repository with this workflow
- Gitpod account (if you don't have one, you can sign up at [Gitpod](https://www.gitpod.io/))

## Setup

1. **Fork this repository**:
   - Go to the GitHub page of this repository.
   - Click the "Fork" button at the top right to create a copy of this repository under your GitHub account.

2. **Open the repository in Gitpod**:
   - Navigate to your forked repository on GitHub.
   - Click the "Gitpod" button, or prefix the repository URL with `https://gitpod.io/#`. For example: `https://gitpod.io/#https://github.com/your-username/your-repo`.

3. **Create a GitHub Actions workflow**:
   - In your repository, create a new file at `.github/workflows/stress-test.yml` and add the following content:

     ```yaml
     name: Stress Test Workflow

     on:
       push:
         branches:
           - main

     jobs:
       stress-test:
         runs-on: ubuntu-latest

         steps:
         - name: Checkout repository
           uses: actions/checkout@v2

         - name: Install stress-ng
           run: sudo apt-get update && sudo apt-get install -y stress-ng

         - name: Run stress-ng
           run: |
             echo "Starting stress test"
             stress-ng --cpu 8 --io 4 --vm 2 --vm-bytes 128M --timeout 300s --metrics-brief

         - name: Print CPU and memory usage
           run: |
             echo "CPU and memory usage during the stress test"
             top -bn1 | head -20
     ```

4. **Push the changes**:
   - Push the newly created workflow file to the `main` branch of your repository.

## Running the Workflow

1. **Trigger the workflow**:
   - Any push to the `main` branch will automatically trigger the workflow. You can manually trigger it by making a small change to any file (e.g., `README.md`) and pushing the change.

2. **Monitor the workflow**:
   - Go to the "Actions" tab of your repository on GitHub.
   - You will see the "Stress Test Workflow" listed. Click on it to see the details of the workflow run.
   - You can view the logs for each step to monitor the progress and resource usage.

## Observing the Runner Processing

To observe the runner processing in real-time, you can use the `top` command to monitor CPU and memory usage.

### Using Gitpod Terminal

1. **Open a terminal in Gitpod**:
   - In your Gitpod workspace, open a new terminal.

2. **Run the following command**:
    ```bash
   top -bn1 | head -20
    ```

### Understanding the Output
The top command output will display the following information:

- **System Uptime and Load Averages:** Indicates how long the system has been running and the average load over the last 1, 5, and 15 minutes.

- **Tasks:** Shows the total number of processes and their states (running, sleeping, etc.).

- **CPU Usage:** Displays the percentage of CPU usage for different categories (user processes, system processes, idle, etc.).

- **Memory Usage:** Provides details on total, used, free memory, and buffers/cache.

- **Process List:** Lists the processes consuming the most resources, showing their CPU and memory usage.
By observing the output, you can understand how much the system is being taxed by the stress test.