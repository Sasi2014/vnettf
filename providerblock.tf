provider "azurerm" {
    subscription_id = "bc8d6383-0521-4535-b543-31db494970fe"
  client_id = "6525acb0-56f7-49fa-b657-ace168643a5f"
  client_secret = "o6j8Q~05bskSy6VYAji12PcWERPHbEN0yvvQndty"    
  tenant_id = "b766d8cb-0655-49a5-8b7b-108086320cdb" 
    features {}
}
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}

terraform {
  backend "azurerm" {
    storage_account_name = "backendsaanji"
    container_name       = "cn1"
    key                  = "prod.terraform.tfstate"

    # rather than defining this inline, the Access Key can also be sourced
    # from an Environment Variable - more information is available below.
    access_key = "zxbF36QKoJGPZFRzeLiF4DY+lDJz6x5qoXND2MogBEGHJ547ZgaSobov4XNNCHKqk/iaVnTEzMjb+AStxlOu7A=="
  }
}
