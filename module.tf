provider "azurerm" {
  features {}
}

module "web_app" {
  source = "./web_app"

}
