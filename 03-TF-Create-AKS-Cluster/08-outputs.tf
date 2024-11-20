# Create Outputs
# 1. Resource Group Location
# 2. Resource Group Id
# 3. Resource Group Name

output "location" {
  value = azurerm_resource_group.aks-rg1.location
}

output "resource_group_id" {
  value = azurerm_resource_group.aks-rg1.id
}

output "resource_group_name" {
  value = azurerm_resource_group.aks-rg1.name
}

#Azure AKS Version Datasource
output "versions" {
  value = data.azurerm_kubernetes_service_versions.current.versions
}

output "latest_version" {
  value = data.azurerm_kubernetes_service_versions.current.latest_version
}

# Azure AD group

output "azuread_group" {
  value = azuread_group.aks_admins.id
}