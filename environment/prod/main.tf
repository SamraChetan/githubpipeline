module "azurerm_resource_group" {
    source = "../Child_modules/azurerm_resource_group"
    resource_groups = var.resource_groups
}
module "azurerm_storage_account" {
    source = "../Child_modules/azurerm_storage_account"
    storage_accounts = var.storage_accounts
    depends_on = [module.azurerm_resource_group]
}
module "azurerm_virtual_network" {
    source = "../Child_modules/azurerm_virtual_network"
    virtual_networks = var.virtual_networks
    depends_on = [module.azurerm_resource_group]
}