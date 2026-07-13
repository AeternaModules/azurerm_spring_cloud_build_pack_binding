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
  # --- Unconfirmed validation candidates, derived from azurerm_spring_cloud_build_pack_binding's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: spring_cloud_builder_id
  #   source:    [from validate.SpringCloudBuildServiceBuilderID] !ok
  # path: spring_cloud_builder_id
  #   source:    [from validate.SpringCloudBuildServiceBuilderID] err != nil
  # path: binding_type
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: launch.properties[*]
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: launch.secrets[*]
  #   condition: length(value) > 0
  #   message:   must not be empty
}

