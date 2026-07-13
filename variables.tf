variable "spring_cloud_build_pack_bindings" {
  description = <<EOT
Map of spring_cloud_build_pack_bindings, attributes below
Required:
    - name
    - spring_cloud_builder_id
Optional:
    - binding_type
    - launch (block):
        - properties (optional)
        - secrets (optional)
EOT

  type = map(object({
    name                    = string
    spring_cloud_builder_id = string
    binding_type            = optional(string)
    launch = optional(object({
      properties = optional(map(string))
      secrets    = optional(map(string))
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.spring_cloud_build_pack_bindings : (
        v.launch == null || (v.launch.properties == null || (alltrue([for x in v.launch.properties : length(x) > 0])))
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.spring_cloud_build_pack_bindings : (
        v.launch == null || (v.launch.secrets == null || (alltrue([for x in v.launch.secrets : length(x) > 0])))
      )
    ])
    error_message = "must not be empty"
  }
  # Note: 3 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

