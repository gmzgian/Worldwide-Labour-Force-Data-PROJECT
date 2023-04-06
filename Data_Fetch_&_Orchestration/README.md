## Prefect

This repo contains Python code to use with Prefect for Data Engineering purposes. We will create workflows to extract and load your data.

I will use GCP's Google Cloud Storage.

Prefect helps you observe and orchestrate your dataflows.

# Setup

## Clone the repo

Clone the repo locally.

## Install packages

In a conda environment, install all package dependencies with 

```bash
pip install -r requirements.txt
```
## Start the Prefect Orion server locally

Create another window and activate your conda environment. Start the Orion API server locally with 

```bash
prefect orion start
```

## Set up GCP 

- Log in to [GCP](https://cloud.google.com/)
- Set up Cloud Storage
- Set up BigQuery
- Create a service account with the required policies to interact with both services

## Register the block types that come with prefect-gcp

`prefect block register -m prefect_gcp`

## Create Prefect GCP blocks

Create a *GCP Credentials* block in the UI.

Paste your service account information from your JSON file into the *Service Account Info* block's field.

![Alt Text]([Images/gcp_block_prefect.png](https://github.com/gmzgian/Worldwide-Labour-Force-Project/blob/0a1d7c0e2bc3e96a9cc0db1a7b0d2212be69262a/Images/gcp_block_prefect.png)

Create a GCS Bucket block in UI 

Alternatively, create these blocks using code by following the templates in the [blocks](./blocks/) folder. 

## Create flow code

Write your Python functions and add `@flow` and `@task` decorators. 

Note: all code should be run from the top level of your folder to keep file paths consistent.

## Create deployments

Create and apply your deployments.

## Run a deployment or create a schedule

Run a deployment ad hoc from the CLI or UI.

Or create a schedule from the UI or when you create your deployment.

## Start an agent

Make sure your agent set up to poll the work queue you created when you made your deployment (*default* if you didn't specify a work queue).
