# Create Resource Group for databases
resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
}

# Call SQL Module
module "sql" {
  source              = "./modules/sql"
  resource_group_name = azurerm_resource_group.rg.name
  location            = var.location
  sql_admin_user      = "sqladmin"
}

# Call Cosmos Module
module "cosmos" {
  source              = "./modules/cosmos"
  resource_group_name = azurerm_resource_group.rg.name
  location            = var.location
}

# Call Storage Module
module "storage" {
  source              = "./modules/storage"
  resource_group_name = azurerm_resource_group.rg.name
  location            = var.location
}
