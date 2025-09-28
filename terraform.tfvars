location              = "eastus"
resource_group_name   = "my-database-rg"

# SQL
sql_server_name       = "stormysqlserver01"
sql_database_name     = "mydb"
sql_admin_password    = "ChangeThisToASecurePassword!"  # OR use a secret manager / environment var

# Cosmos
cosmos_account_name   = "cosmos-mydatabase01" # must obey cosmos naming rules (lowercase, 3-44 chars, hyphen allowed)

# Storage account (must be lowercase, 3-24 chars, letters & numbers only)
storage_account_name  = "stormystorage01"
