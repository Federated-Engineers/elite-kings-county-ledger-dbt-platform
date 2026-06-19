resource "snowflake_grant_privileges_to_account_role" "ecs_all_schema" {
  account_role_name = snowflake_account_role.ecs.name
  privileges        = ["USAGE", "CREATE TABLE", "CREATE VIEW", "CREATE STAGE", "CREATE FILE FORMAT"]

  on_schema {
    all_schemas_in_database = "PROD_DB"
  }
}

resource "snowflake_grant_privileges_to_account_role" "analyst_gold_schema" {
  account_role_name = snowflake_account_role.analyst.name
  privileges        = ["USAGE"]

  on_schema {
    schema_name = "PROD_DB.GOLD"
  }
}

resource "snowflake_grant_privileges_to_account_role" "engineer_silver_schema" {
  account_role_name = snowflake_account_role.engineer.name
  privileges        = ["USAGE", "CREATE TABLE", "CREATE VIEW", "CREATE STAGE"]

  on_schema {
    schema_name = "PROD_DB.SILVER"
  }
}