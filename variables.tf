variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
  default     = "bhavika-databases-rg"
}

variable "location" {
  description = "Azure location for resources"
  type        = string
  default     = "East US"
}

variable "cosmos_account_name" { type = string }
variable "cosmos_database_name" { type = string }
variable "cosmos_container_name" { type = string }

variable "sql_server_name" { type = string }
variable "sql_database_name" { type = string }
variable "sql_admin_username" { type = string }
variable "sql_admin_password" {
  type      = string
  sensitive = true
}

variable "storage_account_name" { type = string }
