provider "azurerm" {
  features {}
   subscription_id = var.subscription_id
}



resource "azurerm_resource_group" "RG" {
  name     = var.resource_group_name
  location = "eastus2"  
}

resource "azurerm_storage_account" "SA" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.RG.name
  location                 = azurerm_resource_group.RG.location
  account_tier            = "Standard"
  account_replication_type = var.replication_type

  tags = {
    environment = "Dev"
  }
}

resource "azurerm_storage_container" "con" {
  name                  = var.container_name
  storage_account_name  = azurerm_storage_account.SA.name
  container_access_type = "private"
}
