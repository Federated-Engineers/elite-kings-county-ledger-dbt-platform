resource "snowflake_warehouse" "wh" {
  name           = var.wh_name
  warehouse_size = "X-SMALL"

  auto_suspend = 300
  auto_resume  = true

  initially_suspended = true
  resource_monitor    = snowflake_resource_monitor.rm.name

  comment = "Warehouse for ${var.wh_name}"
}