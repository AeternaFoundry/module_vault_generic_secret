resource "vault_generic_secret" "generic_secrets" {
  for_each = var.generic_secrets

  data_json           = each.value.data_json
  path                = each.value.path
  delete_all_versions = each.value.delete_all_versions
  disable_read        = each.value.disable_read
  namespace           = each.value.namespace
}

