variable "sql_server_name" {
  description = "SQL Server name (unique within Azure)"
  type        = string
}

variable "sql_database_name" {
  description = "SQL Database name"
  type        = string
}

variable "sql_admin_username" {
  description = "SQL admin username"
  type        = string
  default     = "sqladmin"
}

variable "sql_admin_password" {
  description = "SQL admin password (sensitive)"
  type        = string
  sensitive   = true
}

variable "resource_group_name" {
  description = "Resource group where SQL resources will be created"
  type        = string
}

variable "location" {
  description = "Azure region"
  type        = string
}
