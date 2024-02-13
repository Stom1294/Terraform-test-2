resource "azurerm_storage_account" "azure-storage-containers" {
  name                     = "storagecontainers435627"
  resource_group_name      = azurerm_resource_group.azurerg-wcus01.name
  location                 = azurerm_resource_group.azurerg-wcus01.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  account_kind = "StorageV2"
}