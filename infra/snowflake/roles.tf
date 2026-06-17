resource "snowflake_account_role" "engineers" {
  name = "engineer_role"
}

resource "snowflake_account_role" "analysts" {
  name = "analyst_role"
}