variable "generic_secrets" {
  description = <<EOT
Map of generic_secrets, attributes below
Required:
    - data_json
    - path
Optional:
    - delete_all_versions
    - disable_read
    - namespace
EOT

  type = map(object({
    data_json           = string
    path                = string
    delete_all_versions = optional(bool)
    disable_read        = optional(bool)
    namespace           = optional(string)
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

