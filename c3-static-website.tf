module "azure_static_website" {
  #source = "./modules/azure-static-website"  
  source  = "app.terraform.io/test-org-rh/staticwebsitepublic/azurerm"
  version = "1.0.0"

  # Resource Group
  location = "eastus"
  resource_group_name = "myrg1"

  # Storage Account
  storage_account_name = "staticwebsite"
  storage_account_tier = "Standard"
  storage_account_replication_type = "LRS"
  storage_account_kind = "StorageV2"
  static_website_index_document = "index.html"
  static_website_error_404_document = "error.html"
}