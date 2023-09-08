locals {
  organization_url = var.use_legacy_organization_url ? "https://${var.organization_name}.visualstudio.com":  "https://dev.azure.com/${var.organization_name}" 
}

locals {
  authentication_scheme_managed_identity = "ManagedServiceIdentity"
  authentication_scheme_workload_identity_federation = "WorkloadIdentityFederation"
  is_authentication_scheme_managed_identity = var.authentication_scheme == local.authentication_scheme_managed_identity
  is_authentication_scheme_workload_identity_federation = var.authentication_scheme == local.authentication_scheme_workload_identity_federation
}