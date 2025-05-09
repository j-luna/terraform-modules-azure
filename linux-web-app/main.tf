resource "azurerm_linux_web_app" "this" {
  name                = var.name
  location            = var.location
  resource_group_name = var.resource_group_name
  service_plan_id     = var.service_plan_id

  site_config {
    application_stack {
      node_version           = lookup(var.app_stack, "node_version", null)
      php_version            = lookup(var.app_stack, "php_version", null)
      python_version         = lookup(var.app_stack, "python_version", null)
      dotnet_version         = lookup(var.app_stack, "dotnet_version", null)
      java_version           = lookup(var.app_stack, "java_version", null)
    }

    always_on = var.always_on
  }

  app_settings = var.app_settings
}

