resource "random_password" "sql_password" {
  length  = 16
  special = true
  upper   = true
  lower   = true
  numeric = true
}

resource "azurerm_mssql_server" "sql_server" {
  name                         = var.sql_server_name
  resource_group_name          = var.resource_group_name
  location                     = var.location
  version                      = "12.0"
  administrator_login          = "sqladmin"
  administrator_login_password = var.sql_admin_password

  public_network_access_enabled = true
  minimum_tls_version           = "1.2"
}

resource "azurerm_mssql_database" "sql_db" {
  name       = var.sql_database_name
  server_id  = azurerm_mssql_server.sql_server.id
  sku_name   = "S0"
  collation  = "SQL_Latin1_General_CP1_CI_AS"
  max_size_gb = 5
}
