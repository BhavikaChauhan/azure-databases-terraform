terraform {
  backend "azurerm" {
    resource_group_name  = "terraform-backend-rg"
    storage_account_name = "tfbackendstorageabc123"  # replace after bootstrap
    container_name       = "tfstate"
    key                  = "infra.tfstate"
  }
}
