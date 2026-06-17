# terraform {
#   required_providers {
#     snowflake = {
#       source  = "snowflakedb/snowflake"
#       version = "2.17.0"
#     }
#   }
# }

# provider "snowflake" {
#   organization_name = var.SNOWFLAKE_ORGANIZATION_NAME
#   account_name      = var.SNOWFLAKE_ACCOUNT_NAME
#   user              = var.SNOWFLAKE_USER
#   password          = var.SNOWFLAKE_PASSWORD
#   role              = var.SNOWFLAKE_ROLE
# }