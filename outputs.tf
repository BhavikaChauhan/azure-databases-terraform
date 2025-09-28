output "cosmosdb_account_name" {
  value = module.cosmos.cosmosdb_account_name
}

output "sql_server_name" {
  value = module.sql.sql_server_name
}

output "sql_database_name" {
  value = module.sql.sql_database_name
}

output "storage_account_name" {
  value = module.storage.storage_account_name
}

output "primary_blob_endpoint" {
  value = module.storage.primary_blob_endpoint
}
