output "endpoint" {
  value = azurerm_cosmosdb_account.cosmos.endpoint
}

output "database_name" {
  value = azurerm_cosmosdb_sql_database.db.name
}
