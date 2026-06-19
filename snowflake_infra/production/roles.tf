resource "snowflake_account_role" "analyst" {
  name = "ANALYST_ROLE"
}

resource "snowflake_account_role" "engineer" {
  name = "ENGINEER_ROLE"
}

resource "snowflake_account_role" "ecs" {
  name = "ECS_ROLE"
}