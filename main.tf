terraform {
  required_version = ">= 1.0.0"

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

  backend "azurerm" {
    resource_group_name   = "tfstate-rg"
    storage_account_name  = "tfstatebhavika123"
    container_name        = "tfstate"
    key                   = "terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
}

module "cosmos" {
  source               = "./modules/cosmos"
  resource_group_name  = azurerm_resource_group.rg.name
  location             = var.location
  cosmos_account_name  = var.cosmos_account_name
  cosmos_database_name = var.cosmos_database_name
  cosmos_container_name = var.cosmos_container_name
}

module "sql" {
  source               = "./modules/sql"
  resource_group_name  = azurerm_resource_group.rg.name
  location             = var.location
  sql_server_name      = var.sql_server_name
  sql_database_name    = var.sql_database_name
  sql_admin_username   = var.sql_admin_username
  sql_admin_password   = var.sql_admin_password
}

module "storage" {
  source               = "./modules/storage"
  resource_group_name  = azurerm_resource_group.rg.name
  location             = var.location
  storage_account_name = var.storage_account_name
}