terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0.2"
    }
  }

  required_version = ">= 1.1.0"
}

provider "azurerm" {
  features {}
}

# Primer resource group
resource "azurerm_resource_group" "rg" {
  name     = var.azurerm_resource_group
  location = var.azure_location
  tags = {
    "ambiente" = "dev"
    "aplicacion" = "demo"
    "team" = "coe-apis"
  }
}
resource "azurerm_api_management" "apim" {
  name                = var.apim_name
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  public_network_access_enabled = true
  publisher_name      = var.apim_publisher_name
  publisher_email     = var.apim_publisher_email

  sku_name = "Developer_1"

  tags = azurerm_resource_group.rg.tags
}