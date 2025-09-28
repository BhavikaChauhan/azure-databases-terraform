variable "resource_group_name" {
  description = "Resource group for Terraform backend"
  type        = string
  default     = "tfstate-rg"
}

variable "location" {
  description = "Azure region"
  type        = string
  default     = "eastus"
}

variable "storage_account_name" {
  description = "Globally unique storage account name"
  type        = string
  default     = "tfstatebhavika123"
}

variable "container_name" {
  description = "Storage container name for state files"
  type        = string
  default     = "tfstate"
}
