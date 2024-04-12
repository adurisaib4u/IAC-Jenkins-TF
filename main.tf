provider "azurerm" {
  features {}
}

# Reference the existing resource group
data "azurerm_resource_group" "existing" {
  name = var.existing_resource_group_name
}

resource "azurerm_app_service_plan" "example" {
  name                = var.app_service_plan_name
  location            = data.azurerm_resource_group.existing.location
  resource_group_name = data.azurerm_resource_group.existing.name
  kind                = "Windows"
  reserved            = true

  sku {
    tier = "Basic"
    size = "B1"
  }
}

resource "azurerm_app_service" "example" {
  name                = var.app_service_name
  location            = data.azurerm_resource_group.existing.location
  resource_group_name = data.azurerm_resource_group.existing.name
  app_service_plan_id = azurerm_app_service_plan.example.id

  site_config {
    dotnet_framework_version = "v4.0"
    scm_type                 = "LocalGit"
  }

  app_settings = {
    "WEBSITE_RUN_FROM_PACKAGE" = "1"
  }
}

output "app_service_default_hostname" {
  value = azurerm_app_service.example.default_site_hostname
}
