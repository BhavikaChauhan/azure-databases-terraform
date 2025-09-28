resource "random_password" "sql_password" {
  length           = 16
  special          = true
  numeric          = true
  upper            = true
  lower            = true
}

resource "azurerm_mssql_server" "sql_server" {
  name                         = "sqlserver-${random_password.sql_password.result}"
  resource_group_name           = var.resource_group_name
  location                      = var.location
  administrator_login           = var.sql_admin_username
  administrator_login_password  = var.sql_admin_password
  version                       = "12.0"
  public_network_access_enabled = true
}

resource "azurerm_mssql_database" "sql_db" {
  name       = "mydb"
  server_id  = azurerm_mssql_server.sql_server.id
  sku_name   = "S0"
}