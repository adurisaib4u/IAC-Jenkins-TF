variable "existing_resource_group_name" {
  description = "The name of the existing resource group where the web app will be deployed."
  default     = "IAC-Jenkins-TF"
}

variable "azurerm_service_plan" {
  description = "The name of the Basic App Service Plan."
  default     = "Windowsappteraformplan"
}

variable "azurerm_windows_web_app" {
  description = "The name of the App Service (web app)."
  default     = "TerraformWindowsJenkinsWebapp"
}    
