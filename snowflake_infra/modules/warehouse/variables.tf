variable "wh_name" {
  type = string
}

output "wh_name" {
  value = snowflake_warehouse.wh.name
}

variable "resource_monitor_credit_quota" {
  type = number
}