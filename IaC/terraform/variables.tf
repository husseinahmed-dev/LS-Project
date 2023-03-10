
variable "global_settings" {
  description = "Global settings object for the current deployment."
  default = {
    passthrough    = false
    random_length  = 4
    default_region = "region1"
    regions = {
      region1 = "eastus"
    }
  }
}

variable "regions" {
  description = "global_settings Azure regions"
  type        = list(string)
  default     = []
}

variable "resource_groups" {
  default = {}
}

variable "vnets" {
  default = {}
}

variable "tags" {
  description = "Tags to be used for this resource deployment."
  type        = map(any)
  default     = {}
}

variable "aks_clusters" {
  default = {}
}

variable "diagnostic_log_analytics" {
  default = {}
}

variable "diagnostics_destinations" {
  default = {}
}

variable "diagnostics_definition" {
  default = {}
}

variable "virtual_machines" {
  default = {}
}

variable "network_security_group_definition" {
  default = {}
}

variable "azuread_users" {
  default = {}
}

variable "azuread_apps" {
  default = {}
}

variable "azuread_groups" {
  default = {}
}

variable "role_mapping" {
  default = {}
}

variable "clusterAdminAADGroupsObjectIds" {
  description = "K8S Admin Azure AAD Groups ObjectIDs"
  type        = list(string)
  default     = []
}

variable "clusterUserAADGroupsObjectIds" {
  description = "K8S Reader Azure AAD Groups ObjectIDs"
  type        = list(string)
  default     = []
}

variable "keyvaults" {
  default = {}
}

variable "azurerm_firewalls" {
  default = {}
}

variable "azurerm_firewall_policies" {
  default = {}
}

variable "azurerm_firewall_application_rule_collection_definition" {
  default = {}
}

variable "azurerm_firewall_network_rule_collection_definition" {
  default = {}
}

variable "public_ip_addresses" {
  default = {}
}

variable "route_tables" {
  default = {}
}

variable "azurerm_routes" {
  default = {}
}

variable "logged_user_objectId" {
  default = null
}

# variable "keyvault_certificate_requests" {
#   default = {}
# }

variable "managed_identities" {
  default = {}
}

variable "bastion_hosts" {
  default = {}
}

variable "private_dns" {
  default = {}
}

# variable "domain_name_registrations" {
#   default = {}
# }

variable "dns_zone_records" {
  default = {}
}

variable "dns_zones" {
  default = {}
}

variable "application_gateway_waf_policies" {
  default = {}
}

variable "application_gateway_platforms" {
  default = {}
}

variable "application_gateway_applications_v1" {
  default = {}
}

variable "vnet_peerings" {
  default = {}
}

variable "ip_groups" {
  default = {}
}

variable "override_prefix" {
  default = ""
}
variable "flux_settings" {
  default = {}
}

variable "aks_cluster_key" {
  default = null
}

variable "aad_pod_identity" {
  default = {}
}

variable "azure_container_registries" {
  default = {}
}
