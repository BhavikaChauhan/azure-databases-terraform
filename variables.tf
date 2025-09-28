variable "location" {
  description = "Azure region"
  type        = string
  default     = "eastus"
}

variable "resource_group_name" {
  description = "Root resource group name"
  type        = string
  default     = "my-database-rg"
}

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

variable "cosmos_account_name" {
  description = "Cosmos DB account name (lowercase, 3-44 chars, letters/numbers/hyphen allowed)"
  type        = string
}

variable "cosmos_database_name" {
  description = "Cosmos DB database name"
  type        = string
  default     = "appdb"
}

variable "cosmos_container_name" {
  description = "Cosmos DB SQL container name"
  type        = string
  default     = "items"
}

variable "storage_account_name" {
  description = "Storage account name (lowercase, 3-24 chars, letters+numbers only)"
  type        = string
}
