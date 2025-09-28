output "cosmosdb_account_name" {
  description = "The name of the Cosmos DB account"
  value       = azurerm_cosmosdb_account.cosmos.name
}

output "cosmosdb_database_name" {
  description = "The name of the Cosmos DB SQL database"
  value       = azurerm_cosmosdb_sql_database.db.name
}

output "cosmosdb_container_name" {
  description = "The name of the Cosmos DB SQL container"
  value       = azurerm_cosmosdb_sql_container.container.name
}

output "cosmosdb_endpoint" {
  description = "The Cosmos DB account endpoint"
  value       = azurerm_cosmosdb_account.cosmos.endpoint
}
