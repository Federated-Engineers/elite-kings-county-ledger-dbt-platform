resource "snowflake_grant_privileges_to_account_role" "ecs_service_wh" {
  account_role_name = snowflake_account_role.ecs.name
  privileges        = ["USAGE"]

  on_account_object {
    object_type = "WAREHOUSE"
    object_name = "PROD_SERVICE_WH"
  }
}

resource "snowflake_grant_privileges_to_account_role" "analyst_human_wh" {
  account_role_name = snowflake_account_role.analyst.name
  privileges        = ["USAGE"]

  on_account_object {
    object_type = "WAREHOUSE"
    object_name = "PROD_HUMAN_WH"
  }
}

resource "snowflake_grant_privileges_to_account_role" "engineer_human_wh" {
  account_role_name = snowflake_account_role.engineer.name
  privileges        = ["USAGE"]

  on_account_object {
    object_type = "WAREHOUSE"
    object_name = "PROD_HUMAN_WH"
  }
}
