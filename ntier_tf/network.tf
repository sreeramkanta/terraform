resource "azurerm_subnet" "PriSub1" {
    name = "Web"
    resource_group_name = azurerm_resource_group.mypriRG.name
    virtual_network_name = azurerm_virtual_network.MypriVnet.name
    address_prefixes = ["30.20.1.0/24"]
}

resource "azurerm_subnet" "PriSub2" {
    name = "App"
    resource_group_name = azurerm_resource_group.mypriRG.name
    virtual_network_name = azurerm_virtual_network.MypriVnet.name
    address_prefixes = ["30.20.2.0/24"]
}

resource "azurerm_subnet" "PriSub3" {
    name = "DB"
    resource_group_name = azurerm_resource_group.mypriRG.name
    virtual_network_name = azurerm_virtual_network.MypriVnet.name
    address_prefixes = ["30.20.3.0/24"]
}

resource "azurerm_subnet" "PriSub4" {
    name = "mgmt"
    resource_group_name = azurerm_resource_group.mypriRG.name
    virtual_network_name = azurerm_virtual_network.MypriVnet.name
    address_prefixes = ["30.20.4.0/24"]
}