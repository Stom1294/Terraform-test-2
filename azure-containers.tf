resource "azurerm_container_group" "container-ngnix" {
  name                = "ACI-NGINX"
  location            = azurerm_resource_group.azurerg-wcus01.location
  resource_group_name = azurerm_resource_group.azurerg-wcus01.name
  os_type             = "Linux"

  container {
    name   = "webserver"
    image  = "docker.io/nginx:1.23"
    cpu    = "0.5"
    memory = "1.5"
  }
}