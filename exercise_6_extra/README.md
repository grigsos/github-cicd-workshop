# Github Actions - Creating badge for your README

In this tutorial, you will learn how to create a self updating badge for your README file using GitHub Actions.

### Documentation link
[Shields.io](https://shields.io)


## Task

You are required to set up a basic workflow in your GitHub repository that on every push to master, updates a badge in your README file with the to say whether the pytest from exercise 2 passed or failed.

## Instructions

1. On every push to main, the workflow should run
2. The workflow should push a commit to `master` branch that updates the badge in the README file to say whether the pytest from exercise 2 passed or failed.
3. (Optional) You can just add a badge to the end of the file, or use regex/point at a certain line in README to update the badge.

Here are 3 examples of badges you can use (1 is used as a template already in the README file):

[![Tests](https://img.shields.io/badge/tests-failing-red)](https://github.com/datamindedacademy/github-cicd/actions/workflows/test-and-badge.yaml)
[![Tests](https://img.shields.io/badge/tests-passing-green)](https://github.com/datamindedacademy/github-cicd/actions/workflows/test-and-badge.yaml)
[![Tests](https://img.shields.io/badge/tests-unknown-lightgrey)](https://github.com/datamindedacademy/github-cicd/actions/workflows/test-and-badge.yaml)

> **Warning** 
>
> Don't push to `master` directly in your actual work, create a PR and merge it to `master` to trigger the workflow.