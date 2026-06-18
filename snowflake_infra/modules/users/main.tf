resource "snowflake_user" "this" {
  name         = var.name
  display_name = var.name

  password = var.password

  disabled          = false
  default_role      = var.default_role
  default_warehouse = var.default_warehouse

  must_change_password = false
}
