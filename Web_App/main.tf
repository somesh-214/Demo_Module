resource "azurerm_service_plan" "appserviceplan" {
  name                = var.app_serviceplan_name
  resource_group_name = var.rg_name
  location            = var.location
 sku_name = "B3"
    os_type             = "Windows"
}

resource "azurerm_app_service" "web_app" {
  name                = var.web_app_name
  location            = var.location
  resource_group_name = var.rg_name
  app_service_plan_id = azurerm_app_service_plan.appserviceplan.id

  site_config {
   
  }
}

