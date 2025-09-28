output "cosmos_endpoint" {
  value       = module.cosmos.cosmos_endpoint
  description = "Cosmos DB account endpoint"
}

output "sql_database_name" {
  value       = module.sql.sql_database_name
  description = "SQL database name"
}