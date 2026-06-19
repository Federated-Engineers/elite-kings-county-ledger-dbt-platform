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
  organization_name = "UJYDCFM"
  account_name = "ZZ49269"
  user= "ATLANTIS_ADMIN_USER"
  password = "FEDERATEDatlantisADMIN1"
  role = "ATLANTIS_ADMIN_ROLE"  
}

provider "aws" {
  region = "eu-central-1"
}
