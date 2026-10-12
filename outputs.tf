output "generic_secrets_id" {
  description = "Map of id values across all generic_secrets, keyed the same as var.generic_secrets except keys with no id are omitted"
  value       = { for k, v in vault_generic_secret.generic_secrets : k => v.id if v.id != null && length(v.id) > 0 }
}
output "generic_secrets_data" {
  description = "Map of data values across all generic_secrets, keyed the same as var.generic_secrets except keys with no data are omitted"
  value       = { for k, v in vault_generic_secret.generic_secrets : k => v.data if v.data != null && length(v.data) > 0 }
  sensitive   = true
}
output "generic_secrets_data_json" {
  description = "Map of data_json values across all generic_secrets, keyed the same as var.generic_secrets except keys with no data_json are omitted"
  value       = { for k, v in vault_generic_secret.generic_secrets : k => v.data_json if v.data_json != null && length(v.data_json) > 0 }
  sensitive   = true
}
output "generic_secrets_delete_all_versions" {
  description = "Map of delete_all_versions values across all generic_secrets, keyed the same as var.generic_secrets except keys with no delete_all_versions are omitted"
  value       = { for k, v in vault_generic_secret.generic_secrets : k => v.delete_all_versions if v.delete_all_versions != null }
}
output "generic_secrets_disable_read" {
  description = "Map of disable_read values across all generic_secrets, keyed the same as var.generic_secrets except keys with no disable_read are omitted"
  value       = { for k, v in vault_generic_secret.generic_secrets : k => v.disable_read if v.disable_read != null }
}
output "generic_secrets_namespace" {
  description = "Map of namespace values across all generic_secrets, keyed the same as var.generic_secrets except keys with no namespace are omitted"
  value       = { for k, v in vault_generic_secret.generic_secrets : k => v.namespace if v.namespace != null && length(v.namespace) > 0 }
}
output "generic_secrets_path" {
  description = "Map of path values across all generic_secrets, keyed the same as var.generic_secrets except keys with no path are omitted"
  value       = { for k, v in vault_generic_secret.generic_secrets : k => v.path if v.path != null && length(v.path) > 0 }
}

