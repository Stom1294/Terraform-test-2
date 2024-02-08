resource "azurerm_container_group" "azure-aci-mysql" {
  resource_group_name = azurerm_resource_group.azurerg-wcus01.name
  location = azurerm_resource_group.azurerg-wcus01.location
  name = "ACI-MYSQL"
  os_type = "Linux"

  Container {
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

  }
}