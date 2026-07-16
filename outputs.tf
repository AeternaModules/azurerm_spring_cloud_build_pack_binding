output "spring_cloud_build_pack_bindings_id" {
  description = "Map of id values across all spring_cloud_build_pack_bindings, keyed the same as var.spring_cloud_build_pack_bindings"
  value       = { for k, v in azurerm_spring_cloud_build_pack_binding.spring_cloud_build_pack_bindings : k => v.id if v.id != null && length(v.id) > 0 }
}
output "spring_cloud_build_pack_bindings_binding_type" {
  description = "Map of binding_type values across all spring_cloud_build_pack_bindings, keyed the same as var.spring_cloud_build_pack_bindings"
  value       = { for k, v in azurerm_spring_cloud_build_pack_binding.spring_cloud_build_pack_bindings : k => v.binding_type if v.binding_type != null && length(v.binding_type) > 0 }
}
output "spring_cloud_build_pack_bindings_launch" {
  description = "Map of launch values across all spring_cloud_build_pack_bindings, keyed the same as var.spring_cloud_build_pack_bindings"
  value       = { for k, v in azurerm_spring_cloud_build_pack_binding.spring_cloud_build_pack_bindings : k => v.launch if v.launch != null && length(v.launch) > 0 }
}
output "spring_cloud_build_pack_bindings_name" {
  description = "Map of name values across all spring_cloud_build_pack_bindings, keyed the same as var.spring_cloud_build_pack_bindings"
  value       = { for k, v in azurerm_spring_cloud_build_pack_binding.spring_cloud_build_pack_bindings : k => v.name if v.name != null && length(v.name) > 0 }
}
output "spring_cloud_build_pack_bindings_spring_cloud_builder_id" {
  description = "Map of spring_cloud_builder_id values across all spring_cloud_build_pack_bindings, keyed the same as var.spring_cloud_build_pack_bindings"
  value       = { for k, v in azurerm_spring_cloud_build_pack_binding.spring_cloud_build_pack_bindings : k => v.spring_cloud_builder_id if v.spring_cloud_builder_id != null && length(v.spring_cloud_builder_id) > 0 }
}

