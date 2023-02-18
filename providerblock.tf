provider "azurerm" {
    subscription_id = "210d9bc8-6487-442a-a675-c0fb77f397bd"
  client_id       = "b19641e7-49f8-480e-9029-3a2502c0cbc4"
  client_secret   = "rzv8Q~v0JMtROX2ZNsvCs-GmlqhxjjusN9SFUcgZ"    
  tenant_id       = "3c128606-a2d2-463b-831e-125bfccfee38" 
    features {}
}

terraform {
  backend "azurerm" {
    storage_account_name = "saanjidevops"
    container_name       = "cn1"
    key                  = "prod.terraform.tfstate"

    # rather than defining this inline, the Access Key can also be sourced
    # from an Environment Variable - more information is available below.
    access_key = "94PbwXTXWs/MT30nrDt9XXb1hLbBOkp6dLDLU6C/Htmsk5twsg/7H7vn8HebB/W/hk26/ATBwORt+ASt7n7sPw=="
  }
}
