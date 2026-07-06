output "spring_cloud_build_pack_bindings" {
  description = "All spring_cloud_build_pack_binding resources"
  value       = azurerm_spring_cloud_build_pack_binding.spring_cloud_build_pack_bindings
}
output "spring_cloud_build_pack_bindings_binding_type" {
  description = "List of binding_type values across all spring_cloud_build_pack_bindings"
  value       = [for k, v in azurerm_spring_cloud_build_pack_binding.spring_cloud_build_pack_bindings : v.binding_type]
}
output "spring_cloud_build_pack_bindings_launch" {
  description = "List of launch values across all spring_cloud_build_pack_bindings"
  value       = [for k, v in azurerm_spring_cloud_build_pack_binding.spring_cloud_build_pack_bindings : v.launch]
}
output "spring_cloud_build_pack_bindings_name" {
  description = "List of name values across all spring_cloud_build_pack_bindings"
  value       = [for k, v in azurerm_spring_cloud_build_pack_binding.spring_cloud_build_pack_bindings : v.name]
}
output "spring_cloud_build_pack_bindings_spring_cloud_builder_id" {
  description = "List of spring_cloud_builder_id values across all spring_cloud_build_pack_bindings"
  value       = [for k, v in azurerm_spring_cloud_build_pack_binding.spring_cloud_build_pack_bindings : v.spring_cloud_builder_id]
}

