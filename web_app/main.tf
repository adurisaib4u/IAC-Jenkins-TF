resource "azurerm_service_plan" "example" {
  name                = var.azurerm_service_plan
  resource_group_name = var.existing_resource_group_name
  location            = var.location
  sku_name            = "B1"
  os_type             = "Windows"
}

resource "azurerm_windows_web_app" "example" {
  name                = var.azurerm_windows_web_app
  resource_group_name = var.existing_resource_group_name
  location            = var.location
  app_service_plan_id = azurerm_service_plan.example.id

  site_config {}
}
