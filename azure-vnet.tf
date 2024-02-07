resource "azurerm_virtual_network" "azure-vnet-wcus" {
  name = "vnet-wcus"
  address_space = [ "10.5.0.0/16" ]
  resource_group_name = azurerm_resource_group.azurerg-wcus01.name
  location = azurerm_resource_group.azurerg-wcus01.location
}
resource "azurerm_virtual_network" "azure-vnet-eus2" {
  name = "vnet-eus2"
  address_space = [ "10.10.0.0/16" ]
  resource_group_name = azurerm_resource_group.azurerg-eus02.name
  location = azurerm_resource_group.azurerg-eus02.location
}
