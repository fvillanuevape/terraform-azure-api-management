variable "azurerm_resource_group" {
    type = string
    description = "Nombre del resource group a crear"
}

variable "azure_location" {
  type = string
  default = "eastus2"
  description = "Región disponible de Azure y donde se creará los recursos."
}


variable "apim_name" {
  type = string
  description = "Nombre de la Instancia de API Management"
}

variable "apim_publisher_name" {
  type = string
  description = "Nombre de la Compañia"
}

variable "apim_publisher_email" {
  type = string
  description = "Email de la Compañia"
}