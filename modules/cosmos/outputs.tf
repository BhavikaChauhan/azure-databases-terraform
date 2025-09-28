output "cosmos_database_name" {
  value = azurerm_cosmosdb_sql_database.db.name
}

output "cosmos_endpoint" {
  value = azurerm_cosmosdb_account.cosmos.endpoint
}
