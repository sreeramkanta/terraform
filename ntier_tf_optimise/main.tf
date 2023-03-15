resource "azurerm_resource_group" "myresourceRG" {
    name        = var.resource_group
    location    = var.target_location
  
}

resource "azurerm_virtual_network" "myVnet" {
    name                = "srkvnetTF1025"
    resource_group_name = var.resource_group
    address_space       = var.address_space
    location            = var.target_location

    # explicit dependency to wait till resource group is created
    depends_on = [
      azurerm_resource_group.myresourceRG
    ]
  
}

resource "azurerm_subnet" "mysubnets" {
    count = length(var.subnets)
    name = var.subnets[count.index]
    resource_group_name = var.resource_group
    virtual_network_name = azurerm_virtual_network.myVnet.name
    address_prefixes = [var.address_space[0],8,count.index]
    depends_on = [
      azurerm_resource_group.myresourceRG
      
    ]
  
}