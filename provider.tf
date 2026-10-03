terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "5.8.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "Ali-test"
    storage_account_name = "nahid0562"
    container_name       = "adostatefiles"
    key                  = "landing-zone.infra.tfstate"
  }
}

provider "azurerm" {
  features {}
  subscription_id = "933094f8-3653-44a5-b6f6-04a0992bcf41"
}
