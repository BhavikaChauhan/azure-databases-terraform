resource "random_password" "sql_password" {
  length  = 16
  special = true
  upper   = true
  lower   = true
  number  = true
}

resource "azurerm_mssql_server" "sql_server" {
  name                         = var.sql_server_name
  resource_group_name          = var.resource_group_name
  location                     = var.location
  administrator_login          = var.sql_admin_username
  administrator_login_password = var.sql_admin_password != "" ? var.sql_admin_password : random_password.sql_password.result
  version                      = "12.0"
  minimum_tls_version          = "1.2"
}

resource "azurerm_mssql_database" "sql_db" {
  name                = var.sql_database_name
  server_id           = azurerm_mssql_server.sql_server.id
  resource_group_name = var.resource_group_name
  sku_name            = "S0"
}
