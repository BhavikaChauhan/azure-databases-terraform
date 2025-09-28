variable "cosmos_account_name" {
  description = "Cosmos DB account name"
  type        = string
}

variable "cosmos_database_name" {
  description = "Cosmos DB database name"
  type        = string
  default     = "appdb"
}

variable "cosmos_container_name" {
  description = "Cosmos DB container name"
  type        = string
  default     = "items"
}