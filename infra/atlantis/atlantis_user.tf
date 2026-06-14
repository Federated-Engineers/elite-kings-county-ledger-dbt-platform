resource "snowflake_account_role" "atlantis_role" {
  name = "ATLANTIS_ROLE"
}

resource "snowflake_user" "atlantis_user" {
  name                 = "ATLANTIS_USER"
  login_name           = "ATLANTIS_USER"
  password             = var.atlantis_user_password
  default_role         = snowflake_account_role.atlantis_role.name
  disabled             = false
  must_change_password = false
}

resource "snowflake_grant_account_role" "grant_securityadmin_role" {
  role_name        = "SECURITYADMIN"
  parent_role_name = snowflake_account_role.atlantis_role.name
}

resource "snowflake_grant_account_role" "grant_sysadmin_role" {
  role_name        = "SYSADMIN"
  parent_role_name = snowflake_account_role.atlantis_role.name
}

resource "snowflake_grant_account_role" "grant_atlantis_role_to_atlantis_user" {
  role_name = snowflake_account_role.atlantis_role.name
  user_name = snowflake_user.atlantis_user.name
}
