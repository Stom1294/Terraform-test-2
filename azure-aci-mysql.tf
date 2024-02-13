resource "azurerm_container_group" "azure-aci-mysql" {
  depends_on = [ 
    azurerm_storage_account.azure-storage-containers,
    azurerm_storage_share.azure-file-share
   ]
  resource_group_name = azurerm_resource_group.azurerg-wcus01.name
  location = azurerm_resource_group.azurerg-wcus01.location
  name = "ACI-MYSQL"
  os_type = "Linux"
  ip_address_type = "Public"

   container {
    name = "cbtdatabase"
    image = "docker.io/mysql:8.0.31"
    cpu = 0.5
    memory = 0.4
    environment_variables = {
    MYSQL_ROOT_PASSWORD = "CBTnuggets234!"

    }
     ports {
      port     = 33060
      protocol = "TCP"
    }
    ports {
      port     = 3306
      protocol = "TCP"
    }
    volume {
      name = "mysqldata"
      mount_path = "var/lib/sql"
      storage_account_name = azurerm_storage_account.azure-storage-containers.name
      share_name = azurerm_storage_share.azure-file-share.name
      storage_account_key = azurerm_storage_account.azure-storage-containers.primary_access_key
    }

  }
}