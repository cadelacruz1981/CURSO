terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.16.0"
    }
  }
required_version = ">=0.15"
}
provider "azurerm" {
  # Configuration options
  features {}
}
resource "azure_rm_resource_group" "main" {
  name = "learn-tf-rg-eastus"
}

