variable "name" {
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
