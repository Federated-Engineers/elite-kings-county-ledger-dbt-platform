terraform {
  required_providers {
    snowflake = {
      source  = "snowflakedb/snowflake"
      version = "2.17.0"
    }

    aws = {
      source  = "hashicorp/aws"
      version = "6.51.0"
    }
  }
}

provider "snowflake" {
  account_name      = var.SNOWFLAKE_ACCOUNT_NAME
  user              = var.SNOWFLAKE_USER
  password          = var.SNOWFLAKE_PASSWORD
  role              = var.SNOWFLAKE_ROLE
  organization_name = var.SNOWFLAKE_ORGANIZATION_NAME
}

provider "aws" {
  region = "eu-central-1"
}
