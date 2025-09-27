variable "location" {
  type    = string
  default = "eastus"
}

variable "backend_rg_name" {
  type    = string
  default = "terraform-backend-rg"
}

variable "backend_storage_name" {
  type    = string
  default = "tfbackendstorage"
}

variable "container_name" {
  type    = string
  default = "tfstate"
}
