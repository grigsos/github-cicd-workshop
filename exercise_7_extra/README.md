# GitHub Actions - Stress Test Workflow in Gitpod

This workflow is designed to heavily tax the runner using the `stress-ng` tool. Follow the steps below to set up and run this workflow in a Gitpod workspace and observe the runner's processing.

### Documentation link
[GitHub Actions - Your Own Self-Hosted Runner](https://docs.github.com/en/actions/hosting-your-own-runners/managing-self-hosted-runners/adding-self-hosted-runners)


## Task

Setup and run a stress test workflow in Gitpod to monitor the runner's resource usage.

## Instructions

### Step 1: Push the Changes

You will need to create your own GitHub runner, which can be found in the:
- Settings
- Actions
- Runners

> **Warning** 
>
> You can then follow the commands provided by GitHub to create a new runner on your Gitpod workspace by opening **another terminal** and running the following commands:


(Optional) Alternatively can make make your own local machine a runner, by following the instructions from the [GitHub documentation](https://docs.github.com/en/actions/hosting-your-own-runners/adding-self-hosted-runners).


### 2. Validate the Workflow
The `workflow.yaml` file in the current directory is already filled out and contains a stress test. You need to  move it to `.github/workflows` directory
- Commit your changes.
- Create a pull request.
- (Optional) Allow your workflow to run on every push to PR temporarily.
- Merge PR into the master branch.

### Step 3: Observe the Runner Processing

#### Using a Terminal

1. Open a new terminal in your runner.
2. Run the following command:
    ```bash
    top -bn1 | head -20
    ```

## Explanation of New Workflow Components

The top command output will display the following information:

- **System Uptime and Load Averages**: Indicates how long the system has been running and the average load over the last 1, 5, and 15 minutes.
- **Tasks**: Shows the total number of processes and their states (running, sleeping, etc.).
- **CPU Usage**: Displays the percentage of CPU usage for different categories (user processes, system processes, idle, etc.).
- **Memory Usage**: Provides details on total, used, free memory, and buffers/cache.
- **Process List**: Lists the processes consuming the most resources, showing their CPU and memory usage.

By observing the output, you can understand how much the system is being taxed by the stress test.

## Explanation of stress test

Explanation:
- `cpu 4`: Uses all 4 CPU cores available. (Or adjust depending on the number of cores available)
- `io 4`: Allocates 4 I/O workers, utilizing the maximum potential of your CPU cores for I/O operations.
- `vm 2`: Starts 2 virtual memory stressors.
- `vm-bytes 2G`: Each virtual memory stressor will use 2 GB of memory. With 2 stressors, this will use the maximum 4 GB of memory allowed for virtual memory operations.
- `timeout 300s`: Runs the stress test for 300 seconds (5 minutes).
- `metrics-brief`: Provides a brief summary of the metrics at the end.