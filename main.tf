provider "azurerm" {
  features {}
}

terraform {
  backend "..." {
    // Backend configurations
  }
}

module "web_app" {
  source = "./web_app"

  existing_resource_group_name = var.existing_resource_group_name
  azurerm_service_plan         = var.azurerm_service_plan
  azurerm_windows_web_app      = var.azurerm_windows_web_app
}

output "web_app_url" {
  value = module.web_app.web_app_url
}
