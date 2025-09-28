resource "azurerm_mssql_server" "sql_server" {
  name                         = var.sql_server_name
  resource_group_name          = var.resource_group_name
  location                     = var.location
  administrator_login          = var.sql_admin_username
  administrator_login_password = var.sql_admin_password
  version                      = "12.0"
  public_network_access_enabled = true
}

resource "azurerm_mssql_database" "sql_db" {
  name                = var.sql_database_name
  server_id           = azurerm_mssql_server.sql_server.id
  resource_group_name = var.resource_group_name
  location            = var.location
  sku_name            = "S0"
}