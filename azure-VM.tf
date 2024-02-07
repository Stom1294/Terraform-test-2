variable "vmsize" {
    type = string
    default = "Standard_B2als_v2"
}


resource "azurerm_linux_virtual_machine" "vm01"{
    resource_group_name = azurerm_resource_group.azurerg-wcus01.name
    admin_password = "Sneha2222K*L*"
    admin_username = "Linuxuser1"
    location = azurerm_resource_group.azurerg-wcus01.location
    size = var.vmsize
    name = "vm01"
    disable_password_authentication = false

    network_interface_ids = [
        azurerm_network_interface.azure-netif-wcus01.id
    ]

      os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
    disk_size_gb = 50
  }

  source_image_reference {
    publisher = "canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
    
  }
}