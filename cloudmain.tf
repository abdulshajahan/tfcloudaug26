terraform {
  required_version = ">= 1.6.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }
}


provider "azurerm" {
  # Configuration options
  features {}
}
variable rgname {
type = string
default = "TCS-TF-Lab"
}
variable rglocation {
type = string
default = "centralindia"
}
resource "azurerm_virtual_network" "hcpvnet" {
  name                = "hcpvnet"
  address_space       = ["10.123.0.0/16"]
  location            = var.rglocation
  resource_group_name = var.rgname
  tags = { "env" = "cloud" }
}
