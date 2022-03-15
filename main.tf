# Github Workflow Example
# Based on and with thanks:   https://wahlnetwork.com/2020/05/12/continuous-integration-with-github-actions-and-terraform/


terraform {
  required_version = "~> 1.1.7"
  required_providers {
    newrelic = {
      source  = "newrelic/newrelic"
      version = "~> 2.22.1"
    }
  }
}
provider "newrelic" {
  region = "US"                   
}

terraform {
  backend "s3" {
    bucket = "YOUR-S3-BUCKET-NAME-HERE"
    key    = "githubworkflow/terraform.tfstate"
    region = "eu-west-2"
    profile = "default"
  }
}

# --- Actual new relic terraform here, try changing the policy name!

resource "newrelic_alert_policy" "workflowtest" {
  name = "My Github Workflow policy"
  incident_preference = "PER_POLICY" 
}
