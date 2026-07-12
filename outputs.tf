output "spring_cloud_build_pack_bindings_binding_type" {
  description = "Map of binding_type values across all spring_cloud_build_pack_bindings, keyed the same as var.spring_cloud_build_pack_bindings"
  value       = { for k, v in azurerm_spring_cloud_build_pack_binding.spring_cloud_build_pack_bindings : k => v.binding_type }
}
output "spring_cloud_build_pack_bindings_launch" {
  description = "Map of launch values across all spring_cloud_build_pack_bindings, keyed the same as var.spring_cloud_build_pack_bindings"
  value       = { for k, v in azurerm_spring_cloud_build_pack_binding.spring_cloud_build_pack_bindings : k => v.launch }
}
output "spring_cloud_build_pack_bindings_name" {
  description = "Map of name values across all spring_cloud_build_pack_bindings, keyed the same as var.spring_cloud_build_pack_bindings"
  value       = { for k, v in azurerm_spring_cloud_build_pack_binding.spring_cloud_build_pack_bindings : k => v.name }
}
output "spring_cloud_build_pack_bindings_spring_cloud_builder_id" {
  description = "Map of spring_cloud_builder_id values across all spring_cloud_build_pack_bindings, keyed the same as var.spring_cloud_build_pack_bindings"
  value       = { for k, v in azurerm_spring_cloud_build_pack_binding.spring_cloud_build_pack_bindings : k => v.spring_cloud_builder_id }
}

