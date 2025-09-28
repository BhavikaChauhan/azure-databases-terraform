output "sql_server_name" {
  value     = module.sql.sql_server_name
  sensitive = true
}

output "sql_database_name" {
  value = module.sql.sql_database_name
}

output "cosmos_account_name" {
  value = module.cosmos.cosmos_account_name
}

output "cosmos_endpoint" {
  value = module.cosmos.cosmos_endpoint
  sensitive = true
}

output "storage_account_name" {
  value = module.storage.storage_account_name
}
