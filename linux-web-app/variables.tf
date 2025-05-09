variable "name" {
  description = "Name of the Linux web app"
  type        = string
}

variable "location" {
  description = "Location of the Linux web app"
  type        = string
}

variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
}

variable "service_plan_id" {
  description = "ID of the associated App Service Plan"
  type        = string
}

variable "app_stack" {
  description = "Application stack configuration"
  type = object({
    node_version      = optional(string)
    php_version       = optional(string)
    python_version    = optional(string)
    dotnet_version    = optional(string)
    java_version      = optional(string)
  })
  default = {}
}

variable "app_settings" {
  description = "App settings as key-value pairs"
  type        = map(string)
  default     = {}
}

variable "always_on" {
  description = "Enable always on for the web app"
  type        = bool
  default     = false
}