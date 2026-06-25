variable "user_name" {
  type = string
}

variable "password" {
  type      = string
  sensitive = true
}

variable "default_role" {
  type = string
}

variable "default_warehouse" {
  type = string
}

output "user_name" {
  value = snowflake_user.user.name
}
