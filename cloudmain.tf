variable rglocation { }
variable rgnmae {}
resource "azurerm_virtual_network" "hcpvnet" {
  name                = "hcpvnet"
  address_space       = ["10.123.0.0/16"]
  location            = "centralindia"
  resource_group_name = "TCS-TF-Labs"
  tags = { "env" = "cloud" }
}
