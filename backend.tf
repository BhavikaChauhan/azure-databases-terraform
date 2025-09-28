terraform {
  backend "azurerm" {
    resource_group_name   = "tfstate-rg"
    storage_account_name  = "tfstatebhavika123"
    container_name        = "tfstate"
    key                   = "terraform.tfstate"
  }
}