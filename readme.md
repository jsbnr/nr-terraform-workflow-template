# Simple Terraform GitHub Workflow

**This contnent has moved here:** [https://github.com/newrelic-experimental/oma-nr-terraform-workflows](https://github.com/newrelic-experimental/oma-nr-terraform-workflows)

---


This project demonstrates a very simple github workflow to control New Relic terraform updates.

Checkout the project, create a new branch and submit a pull request. This will run the terraform plan.
When the PR is merged the apply will run.


## Setup:
The state file is stored in S3. You will need to create the S3 bucket and give permissions to an IAM role to write and read from the bucket. Update main.tf with your bucket name.


To run the github workflows you need to setup the following secrets in GitHub:

- AWS_ACCESS_KEY_ID - the access key ID for an AWS IAM user that allows tfstate to be stored in specified S3 bucket
- AWS_SECRET_ACCESS_KEY - the key for the above 
- NEW_RELIC_ACCOUNT_ID - Your New Relic account ID
- NEW_RELIC_API_KEY - Your New Relic User API Key
