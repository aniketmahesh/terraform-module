resource "azurerm_resource_group" "rg" {
  name     = "${var.base_name}-rg-01"
  location = var.location
}

