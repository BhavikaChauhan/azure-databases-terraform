variable "resource_group_name" {
  description = "Root resource group name"
  type        = string
  default     = "my-database-rg"
}

variable "location" {
  description = "Azure region"
  type        = string
  default     = "eastus"
}