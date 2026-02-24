terraform {
  cloud {
    organization = "myterraform10"
 
    workspaces {
      name = "terraformdemo10"
    }
  }
 
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
}
 
provider "azurerm" {
  features {}
}
 
resource "azurerm_resource_group" "rg" {
  name     = "jd-cli-hcp-rg"
  location = "East US"
}
