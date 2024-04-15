module "web_app" {
  source = "./web_app"

  existing_resource_group_name = var.existing_resource_group_name

}
