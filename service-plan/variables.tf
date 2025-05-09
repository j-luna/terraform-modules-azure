variable "name" {
  description = "Name of App Service Plan"
  type        = string
}

variable "resource_group_name" {
  description = "Name of resource group"
  type        = string
}

variable "location" {
  description = "Location of the App Service Plan"
  type        = string
}

variable "sku_name" {
  description = "SKU for the App Service Plan"
  type        = string
  validation {
    condition     = contains([
      "B1", "B2", "B3", "D1", "F1", "I1", "I2",
      "I3", "I1v2", "I1mv2", "I2v2", "I2mv2",
      "I3v2", "I3mv2", "I4v2", "I4mv2", "I5v2",
      "I5mv2", "I6v2", "P1v2", "P2v2", "P3v2",
      "P0v3", "P1v3", "P2v3", "P3v3", "P1mv3",
      "P2mv3", "P3mv3", "P4mv3", "P5mv3", "S1",
      "S2", "S3", "SHARED", "EP1", "EP2", "EP3",
      "FC1", "WS1", "WS2", "WS3"], var.sku_name)
    error_message = "sku_name invalid. See https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/service_plan for valid values."
  }

}

variable "os_type" {
  description = "OS for the App Service Plan"
  type        = string
  validation {
    condition     = contains(["Linux", "Windows"], var.os_type)
    error_message = "sku_name must be 'Linux' or 'Windows'"
  }
}
