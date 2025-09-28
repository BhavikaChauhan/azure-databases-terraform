output "cosmos_account_name" {
  value = azurerm_cosmosdb_account.this.name
}

output "cosmos_endpoint" {
  value = azurerm_cosmosdb_account.this.endpoint
}
