resource "azurerm_virtual_network" "virtual_network" {
   
  name                = "hcl-vnet01"
  location            = "centralindia"
  resource_group_name = "hcl01"
  address_space       = ["10.0.0.0/16"]
  

 dynamic "subnet" {
    for_each = var.subnet
    content {
       name           = subnet.value.name
        address_prefix = subnet.value.address_prefix
    }
  }
}
