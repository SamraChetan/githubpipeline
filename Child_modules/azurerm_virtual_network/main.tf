resource "azurerm_virtual_network" "virtual_networks" {
  for_each = var.virtual_networks
  name                = each.value.name
  resource_group_name = each.value.resource_group_name
  location            = each.value.location
  address_space       = each.value.address_space
}

variable "virtual_networks" {
  description = "A map of virtual networks to create"
  type        = map(object({
    name                = string
    resource_group_name = string
    location            = string
    address_space       = list(string)
  }))
}