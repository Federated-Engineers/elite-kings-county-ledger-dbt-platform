terraform {
  required_providers {
    snowflake = {
      source  = "snowflakedb/snowflake"
      version = "2.17.0"
    }
  }
}

provider "snowflake" {
    organization_name = "UJYDCFM"
    account_name      = "ZZ49269"
    user              = "ATLANTIS_ADMIN_USER"
    password          = "FEDERATEDatlantisADMIN1"
    role              = "ATLANTIS_ADMIN_ROLE"
}
