resource "random_password" "sql_password" {
  length  = 16
  special = true
}

resource "azurerm_mssql_server" "sql_server" {
  name                         = "sqlserver-${random_password.sql_password.result}"
  resource_group_name          = var.resource_group_name
  location                     = var.location
  version                      = "12.0"
  administrator_login          = var.sql_admin_user
  administrator_login_password = random_password.sql_password.result
}

resource "azurerm_mssql_database" "sql_db" {
  name      = "mydb"
  server_id = azurerm_mssql_server.sql_server.id
  sku_name  = "S0"
}
