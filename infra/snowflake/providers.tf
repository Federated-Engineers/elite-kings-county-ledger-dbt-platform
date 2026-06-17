terraform {
  required_providers {
    snowflake = {
      source  = "Snowflake-Labs/snowflake"
      version = "2.17.0"
    }
  }
}

provider "snowflake" {
    organization_name = "UJYDCFM"
    account_name      = "ZZ49269"
    user              = "THEJOYVICTOR"
    password          = "FEDERATEDatlantis1"
    role              = "ATLANTIS_ROLE"
}
