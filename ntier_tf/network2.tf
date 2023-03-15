resource "azurerm_subnet" "SecSub1" {
    name = "Web"
    resource_group_name = azurerm_resource_group.mysecRG.name
    virtual_network_name = azurerm_virtual_network.MysecVnet.name
    address_prefixes = ["10.10.1.0/24"]
}

resource "azurerm_subnet" "SecSub2" {
    name = "App"
    resource_group_name = azurerm_resource_group.mysecRG.name
    virtual_network_name = azurerm_virtual_network.MysecVnet.name
    address_prefixes = ["10.10.2.0/24"]
}

resource "azurerm_subnet" "SecSub3" {
    name = "DB"
    resource_group_name = azurerm_resource_group.mysecRG.name
    virtual_network_name = azurerm_virtual_network.MysecVnet.name
    address_prefixes = ["10.10.3.0/24"]
}

resource "azurerm_subnet" "SecSub4" {
    name = "mgmt"
    resource_group_name = azurerm_resource_group.mysecRG.name
    virtual_network_name = azurerm_virtual_network.MysecVnet.name
    address_prefixes = ["10.10.4.0/24"]
}