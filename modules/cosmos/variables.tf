variable "cosmos_account_name" {
  description = "Cosmos DB account name (lowercase, 3-44 chars, letters/numbers/hyphen allowed)"
  type        = string
}

variable "cosmos_database_name" {
  description = "Cosmos DB SQL database name"
  type        = string
  default     = "appdb"
}

variable "cosmos_container_name" {
  description = "Cosmos DB SQL container name"
  type        = string
  default     = "items"
}

variable "resource_group_name" {
  description = "Resource group where Cosmos DB will be created"
  type        = string
}

variable "location" {
  description = "Azure region"
  type        = string
}
