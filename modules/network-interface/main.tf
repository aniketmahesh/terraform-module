resource "azurerm_network_interface" "nic" {
  name                = "${var.base_name}-vm-01-nic-01"
  location            = var.location
  resource_group_name = var.resource_group_name

  ip_configuration {
    name                          = "ipconfiguration01"
    subnet_id                     = var.subnet_id
    private_ip_address_allocation = "Dynamic"
  }
}