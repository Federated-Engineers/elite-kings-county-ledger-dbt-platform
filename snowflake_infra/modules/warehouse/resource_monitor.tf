resource "snowflake_resource_monitor" "rm" {
  name         = "ALL_WAREHOUSES_RM"
  credit_quota = 10
  frequency    = "MONTHLY"

  notify_triggers           = [50, 75]
  suspend_trigger           = 90
  suspend_immediate_trigger = 100

  notify_users = ["THEJOYVICTOR"]
}