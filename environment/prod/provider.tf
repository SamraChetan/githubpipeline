terraform {
    required_providers {
        azurerm = {
            source = "hashicorp/azurerm"
            version = "4.80.0"
        }
    }
    backend "azurerm" {
        resource_group_name = "staterg"
        storage_account_name = "storageforstatefile123"
        container_name = "statefilekafolder"
        key = "infrastructure.tfstate"
          }
}
provider "azurerm" {
    features {}
}