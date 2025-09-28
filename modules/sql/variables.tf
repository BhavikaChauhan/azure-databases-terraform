variable "sql_admin_password" {
  type      = string
  sensitive = true
}

variable "sql_server_name" {
  type = string
}

variable "sql_database_name" {
  type = string
}

variable "resource_group_name" {
  type = string
}

variable "location" {
  type = string
}
