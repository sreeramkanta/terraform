resource "azurerm_resource_group" "mypriRG" {
    name        = "PrimaryRG"
    location    = "eastUS"  
}

resource "azurerm_resource_group" "mysecRG" {
    name        = "SecondaryRG"
    location    = "WestUS"  
}

resource "azurerm_virtual_network" "MypriVnet" {
    name                = "PrimVnet"
    resource_group_name = azurerm_resource_group.mypriRG.name
    location            = azurerm_resource_group.mypriRG.location
    address_space       = [ "30.20.0.0/16" ]
  
}

resource "azurerm_virtual_network" "MysecVnet" {
    name                = "SecVnet"
    resource_group_name = azurerm_resource_group.mysecRG.name
    location            = azurerm_resource_group.mysecRG.location
    address_space       = [ "10.10.0.0/16" ] 
}