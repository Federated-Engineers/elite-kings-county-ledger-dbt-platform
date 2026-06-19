resource "snowflake_grant_privileges_to_account_role" "ecs_use_prod_db" {
  account_role_name = snowflake_account_role.ecs.name
  privileges        = ["USAGE", "CREATE SCHEMA"]

  on_account_object {
    object_type = "DATABASE"
    object_name = "PROD_DB"
  }
}

resource "snowflake_grant_privileges_to_account_role" "analyst_use_prod_db" {
  account_role_name = snowflake_account_role.analyst.name
  privileges        = ["USAGE"]

  on_account_object {
    object_type = "DATABASE"
    object_name = "PROD_DB"
  }
}