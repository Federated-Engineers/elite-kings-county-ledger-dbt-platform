resource "snowflake_grant_account_role" "analyst_to_parent_engineer" {
  role_name        = snowflake_account_role.analyst.name
  parent_role_name = snowflake_account_role.engineer.name
}

resource "snowflake_grant_account_role" "analyst_to_user" {
  role_name = snowflake_account_role.analyst.name
  user_name = module.analyst_user.user_name
}

resource "snowflake_grant_account_role" "ecs_to_user" {
  role_name = snowflake_account_role.ecs.name
  user_name = module.ecs_user.user_name
}

resource "snowflake_grant_account_role" "engineer_to_user" {
  role_name = snowflake_account_role.engineer.name
  user_name = module.engineer_user.user_name
}

#Platform role inherits from engineer and analyst
resource "snowflake_grant_account_role" "engineer_to_parent_platform" {
  role_name        = snowflake_account_role.engineer.name
  parent_role_name = snowflake_account_role.platform.name
}

resource "snowflake_grant_account_role" "analyst_to_parent_platform" {
  role_name        = snowflake_account_role.analyst.name
  parent_role_name = snowflake_account_role.platform.name
}
