output "default_site_hostname" {
  description = "Default URL of the deployed web app"
  value       = azurerm_linux_web_app.this.default_site_hostname
}

output "id" {
  description = "ID of the deployed web app"
  value       = azurerm_linux_web_app.this.id
}

output "name" {
  description = "Name of the deployed web app"
  value       = azurerm_linux_web_app.this.name
}