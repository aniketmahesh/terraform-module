base_name                     = "mktf"
location                      = "southindia"
virtual_network_address_space = ["10.0.0.0/16"]
subnet_name                   = "HubSubnet1"
subnet_address_prefixes       = ["10.0.1.0/24"]
admin_username                = "adminuser"
admin_password                = "P@$$w0rd1234!"

vm_size = "standard_DS1_V2"

#OS Image information
image_publisher = "MicrosoftWindowsServer"
image_offer     = "WindowsServer"
image_sku       = "2016-Datacenter"
image_version   = "latest"
