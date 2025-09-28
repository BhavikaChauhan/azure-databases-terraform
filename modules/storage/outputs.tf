output "storage_account_name" {
  description = "The name of the storage account"
  value       = azurerm_storage_account.storage.name
}

output "primary_blob_endpoint" {
  description = "The primary Blob endpoint for the storage account"
  value       = azurerm_storage_account.storage.primary_blob_endpoint
}
