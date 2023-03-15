resource "azurerm_resource_group" "myrg1" {
        name = "mynewTFRG"
        location = "eastUS"
        
  
}

resource "azurerm_storage_account" "mystorageAcc" {
        name = "srktf1021"
        resource_group_name = "mynewTFRG"
        location = "eastUS"
        account_tier = "Standard"
        account_replication_type = "LRS"

  
}