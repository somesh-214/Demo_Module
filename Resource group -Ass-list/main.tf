resource "azurerm_resource_group" "Rg" {
  for_each = toset(var.rg_name)
  name     = each.rgname
  location = "West Europe"
}