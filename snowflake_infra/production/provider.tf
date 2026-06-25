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

provider "snowflake" {}

provider "aws" {
  region = "eu-central-1"
}
