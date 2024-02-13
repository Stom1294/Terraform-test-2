resource "azurerm_storage_share" "azure-file-share" {
depends_on = [
    azurerm_storage_account.azure-storage-containers
]
storage_account_name = azurerm_storage_account.azure-storage-containers.name
quota = 5
name = "acimysql"
}