resource "azurerm_network_interface" "azure-netif-wcus01" {
resource_group_name = azurerm_resource_group.azurerg-wcus01.name
location = azurerm_virtual_network.azure-vnet-wcus.location
name = "netif-wcus01"
dns_servers = ["8.8.8.8" , "8.8.4.4"]

ip_configuration {
  name = "internal"
  subnet_id = azurerm_subnet.azure-subnet-wcus01.id
  private_ip_address_allocation = "Dynamic"
  primary = true
  private_ip_address_version = "IPv4"
}
tags = {
    Owner="Sneha Thomas"
    Project="CBT training"
}

  
}

resource "azurerm_network_interface" "azure-netif-eus01" {
resource_group_name = azurerm_resource_group.azurerg-eus02.name
location = azurerm_virtual_network.azure-vnet-eus2.location
name = "netif-eus01"
dns_servers = ["8.8.8.8" , "8.8.4.4"]

ip_configuration {
  name = "internal"
  subnet_id = azurerm_subnet.azure-subnet-eus01.id
  private_ip_address_allocation = "Dynamic"
  primary = true
  private_ip_address_version = "IPv4"
}

tags = {
    Owner="Sneha Thomas"
    Project="CBT training"
}
}
