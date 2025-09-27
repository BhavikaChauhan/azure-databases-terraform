Azure Databases with Terraform (SQL + Cosmos DB + Blob Storage)

This project demonstrates how to provision Azure SQL Database, Cosmos DB (NoSQL), and Blob Storage in a modular, production-ready Terraform setup.
It also uses an Azure Storage Account backend for Terraform state management.

📂 Repository Structure
azure-databases-terraform/
│── backend.tf              # Remote backend configuration (uses Azure Storage)
│── provider.tf             # Provider setup
│── variables.tf            # Global variables
│── main.tf                 # Root config wiring modules
│── outputs.tf              # Root outputs
│
│── backend-bootstrap/      # Bootstrap project for Terraform backend
│    ├── main.tf
│    ├── variables.tf
│    └── outputs.tf
│
│── modules/                # Reusable modules
│    ├── sql/
│    │    ├── main.tf
│    │    ├── variables.tf
│    │    └── outputs.tf
│    ├── cosmos/
│    │    ├── main.tf
│    │    ├── variables.tf
│    │    └── outputs.tf
│    └── storage/
│         ├── main.tf
│         ├── variables.tf
│         └── outputs.tf

🏗️ Architecture
flowchart LR
    subgraph RG[Azure Resource Group]
      SQL[(Azure SQL Database)]
      Cosmos[(Cosmos DB NoSQL)]
      Blob[(Blob Storage)]
    end

    Terraform[Terraform IaC] --> RG
    State[(Terraform State in Azure Storage)] --- Terraform

⚙️ Features

✅ Modular Terraform code (modules/sql, modules/cosmos, modules/storage)

✅ Remote backend with Azure Storage (state locking & collaboration-ready)

✅ Secure password generation for SQL admin (random_password)

✅ Outputs for connection details (SQL, Cosmos, Storage)

✅ Reusable in other projects via modules

🚀 Getting Started
1️⃣ Prerequisites

Terraform CLI
 ≥ v1.0

Azure CLI
 ≥ 2.0

Logged in to Azure:

az login

2️⃣ Bootstrap the Remote Backend

Navigate into the backend-bootstrap folder and deploy the backend storage:

cd backend-bootstrap
terraform init
terraform apply -auto-approve


Outputs will show:

storage_account_name = tfbackendstorageabc123
container_name       = tfstate
resource_group_name  = terraform-backend-rg

3️⃣ Configure Backend in Main Project

Update backend.tf with the bootstrap outputs:

terraform {
  backend "azurerm" {
    resource_group_name  = "terraform-backend-rg"
    storage_account_name = "tfbackendstorageabc123"
    container_name       = "tfstate"
    key                  = "infra.tfstate"
  }
}

4️⃣ Deploy the Main Infrastructure
cd ..
terraform init
terraform plan
terraform apply

📦 Outputs

After apply, Terraform will show:

SQL Server Name

SQL Database Name

Cosmos DB Account & Endpoint

Storage Account Name

Blob Container Name

(SQL admin password is generated and marked sensitive 🔒)

🔐 Security Notes

Secrets (SQL password, Cosmos keys) should be managed via Azure Key Vault in production.

For enterprise use, replace SQL admin auth with Azure AD authentication.

Always use a remote backend for Terraform (already included).

📚 References

Terraform AzureRM Provider Docs

Azure SQL Docs

Azure Cosmos DB Docs

Azure Storage Docs

👩‍💻 Author

Bhavika Chauhan
🔗 GitHub
 • LinkedIn

✨ With this setup, you have a reusable, professional-grade Terraform repo ready for your portfolio or real-world deployments.
