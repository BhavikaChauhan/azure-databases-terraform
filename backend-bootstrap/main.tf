terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.0"
    }
  }
  required_version = ">= 1.0.0"
}

provider "azurerm" {
  features {}
}

# Resource Group for backend
resource "azurerm_resource_group" "rg" {
  name     = var.backend_rg_name
  location = var.location
}

# Random suffix to avoid duplicate storage account names
resource "random_string" "suffix" {
  length  = 6
  upper   = false
  number  = true
  special = false
}

# Storage account for Terraform state
resource "azurerm_storage_account" "sa" {
  name                     = lower("${var.backend_storage_name}${random_string.suffix.result}")
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

# Blob container to hold tfstate files
resource "azurerm_storage_container" "container" {
  name                  = var.container_name
  storage_account_name  = azurerm_storage_account.sa.name
  container_access_type = "private"
}
