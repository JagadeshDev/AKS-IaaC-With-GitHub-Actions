terraform {

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.2.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "rg-dnlh-12mar-dev"
    storage_account_name = "stiaacgithub"
    container_name       = "terraformstate"
    key                  = "akscluster.tfstate"
  }
}


provider "azurerm" {
  features {}
}