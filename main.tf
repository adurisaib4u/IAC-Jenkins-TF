provider "azurerm" {
  features {}
}

# Reference the existing resource group
data "azurerm_resource_group" "existing" {
  name = var.existing_resource_group_name
}

resource "azurerm_service_plan" "example" {
  name                = var.azurerm_service_plan
  resource_group_name = azurerm_resource_group.example.name
  location            = East US
  sku_name            = "P1v2"
  os_type             = "Windows"
}

resource "azurerm_windows_web_app" "example" {
  name                = var.azurerm_windows_web_app
  resource_group_name = azurerm_resource_group.example.name
  location            = East US
  service_plan_id     = azurerm_service_plan.example.id

  site_config {}
}
