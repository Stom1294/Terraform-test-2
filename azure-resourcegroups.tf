resource "azurerm_resource_group" "azurerg-wcus01" {
  name = "azurevmrg01"
  location = "West Central US"
}

resource "azurerm_resource_group" "azurerg-eus02" {
  name = "azurevmrg02"
  location = "East US 2"
}