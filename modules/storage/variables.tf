variable "storage_account_name" {
  description = "Storage account name (lowercase, 3-24 chars, letters+numbers only)"
  type        = string
}

variable "resource_group_name" {
  description = "Resource group name where the storage account will be created"
  type        = string
}

variable "location" {
  description = "Azure region"
  type        = string
}
