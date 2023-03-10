module "caf" {
  source = "git::https://github.com/aztfmod/terraform-azurerm-caf"

  #source  = "aztfmod/caf/azurerm"
  #version = "~> 5.6.3"

  providers = {
    azurerm.vhub = azurerm.vhub
  }
  global_settings      = merge((var.override_prefix == "" ? {} : { prefix = var.override_prefix }), local.global_settings)
  logged_user_objectId = var.logged_user_objectId
  tags                 = var.tags
  resource_groups      = local.resource_groups
  keyvaults            = var.keyvaults
  managed_identities   = var.managed_identities
  role_mapping         = local.role_mapping
  azuread = {
    azuread_apps   = var.azuread_apps
    azuread_users  = var.azuread_users
    azuread_groups = var.azuread_groups
  }

  networking = {
    application_gateway_waf_policies                        = var.application_gateway_waf_policies
    application_gateway_platforms                           = var.application_gateway_platforms
    application_gateway_applications_v1                     = var.application_gateway_applications_v1
    #domain_name_registrations                               = var.domain_name_registrations
    dns_zone_records                                        = var.dns_zone_records
    dns_zones                                               = var.dns_zones
    azurerm_firewalls                                       = var.azurerm_firewalls
    azurerm_firewall_application_rule_collection_definition = var.azurerm_firewall_application_rule_collection_definition
    azurerm_firewall_network_rule_collection_definition     = var.azurerm_firewall_network_rule_collection_definition
    azurerm_routes                                          = var.azurerm_routes
    network_security_group_definition                       = var.network_security_group_definition
    public_ip_addresses                                     = var.public_ip_addresses
    route_tables                                            = var.route_tables
    vnets                                                   = var.vnets
    private_dns                                             = var.private_dns
    vnet_peerings                                           = var.vnet_peerings
    ip_groups                                               = var.ip_groups
  }

  diagnostics = {
    # Get the diagnostics settings of services to create
    diagnostic_log_analytics = var.diagnostic_log_analytics
    diagnostics_destinations = var.diagnostics_destinations
    diagnostics_definition   = var.diagnostics_definition
  }

  compute = {
    aks_clusters               = var.aks_clusters
    bastion_hosts              = var.bastion_hosts
    virtual_machines           = var.virtual_machines
    azure_container_registries = var.azure_container_registries
  }

  # security = {
  #   keyvault_certificate_requests = var.keyvault_certificate_requests
  # }
}
