output "sql_server_name" {
  value = module.sql.sql_server_name
}

output "sql_database_name" {
  value = module.sql.sql_database_name
}

output "cosmos_endpoint" {
  value = module.cosmos.endpoint
}

output "cosmos_database" {
  value = module.cosmos.database_name
}

output "storage_account_name" {
  value = module.storage.storage_account_name
}

output "blob_container_name" {
  value = module.storage.container_name
}
