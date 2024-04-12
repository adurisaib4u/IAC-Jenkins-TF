variable "existing_resource_group_name" {
  description = "The name of the existing resource group where the web app will be deployed."
  default     = "IAC-Jenkins-TF"
}

variable "app_service_plan_name" {
  description = "The name of the Basic App Service Plan."
  default     = "basic-plan"
}

variable "app_service_name" {
  description = "The name of the App Service (web app)."
  default     = "TerraformWebapp"
}