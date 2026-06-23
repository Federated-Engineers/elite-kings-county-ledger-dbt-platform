resource "snowflake_resource_monitor" "rm" {
  name         = "${var.wh_name}_RM"
  credit_quota = var.resource_monitor_credit_quota
  frequency    = "MONTHLY"

  start_timestamp           = "2026-07-19 00:00:00"
  notify_triggers           = [50, 75]
  suspend_trigger           = 90
  suspend_immediate_trigger = 100

  notify_users = ["THEJOYVICTOR"]
}