terraform {
  required_providers {
    snowflake = {
      source  = "Snowflake-Labs/snowflake"
      version = "2.17.0"
    }
  }
}

provider "snowflake" {}
