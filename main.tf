provider "azurerm" {
  features {}
}

terraform {
  backend "..." {
    // Backend configurations
  }
}

output "web_app_url" {
  value = module.web_app.web_app_url
}
