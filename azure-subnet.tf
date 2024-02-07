resource "azurerm_subnet" "azure-subnet-wcus01" {
  name = "subnet-wcus01"
  address_prefixes = [ "10.5.5.0/24" ]
  resource_group_name = azurerm_resource_group.azurerg-wcus01.name
  virtual_network_name = azurerm_virtual_network.azure-vnet-wcus.name
}
resource "azurerm_subnet" "azure-subnet-eus01" {
  name = "subnet-eus01"
  address_prefixes = [ "10.10.5.0/24" ]
  resource_group_name = azurerm_resource_group.azurerg-eus02.name
  virtual_network_name = azurerm_virtual_network.azure-vnet-eus2.name
}