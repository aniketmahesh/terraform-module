terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.99.0"
    }
  }
}

provider "azurerm" {
  features {}
}

module "resourceGroup" {
  source    = "./modules/resource-group"
  base_name = var.base_name
  location  = var.location
}

module "virtualNetwork" {
  source                        = "./modules/virtual-network"
  base_name                     = var.base_name
  virtual_network_name          = var.virtual_network_name
  location                      = var.location
  resource_group_name           = module.resourceGroup.resource_group_name
  virtual_network_address_space = var.virtual_network_address_space
  subnet_name                   = var.subnet_name
  subnet_address_prefixes       = var.subnet_address_prefixes
}

module "networkInterface" {
  source              = "./modules/network-interface"
  base_name           = var.base_name
  location            = var.location
  resource_group_name = module.resourceGroup.resource_group_name
  subnet_id           = module.virtualNetwork.subnet_id
}

module "vmInstanceWindow" {
  source                = "./modules/virtual-machine"
  base_name             = var.base_name
  location              = var.location
  resource_group_name   = module.resourceGroup.resource_group_name
  network_interface_ids = [module.networkInterface.nic_ids]

  vm_size         = var.vm_size
  image_publisher = var.image_publisher
  image_offer     = var.image_offer
  image_sku       = var.image_sku
  image_version   = var.image_version
  admin_username  = var.admin_username
  admin_password  = var.admin_password

}
