output "vertex_ai_deployment_resource_pools_id" {
  description = "Map of id values across all vertex_ai_deployment_resource_pools, keyed the same as var.vertex_ai_deployment_resource_pools except keys with no id are omitted"
  value       = { for k, v in google_vertex_ai_deployment_resource_pool.vertex_ai_deployment_resource_pools : k => v.id if v.id != null && length(v.id) > 0 }
}
output "vertex_ai_deployment_resource_pools_create_time" {
  description = "Map of create_time values across all vertex_ai_deployment_resource_pools, keyed the same as var.vertex_ai_deployment_resource_pools except keys with no create_time are omitted"
  value       = { for k, v in google_vertex_ai_deployment_resource_pool.vertex_ai_deployment_resource_pools : k => v.create_time if v.create_time != null && length(v.create_time) > 0 }
}
output "vertex_ai_deployment_resource_pools_dedicated_resources" {
  description = "Map of dedicated_resources values across all vertex_ai_deployment_resource_pools, keyed the same as var.vertex_ai_deployment_resource_pools except keys with no dedicated_resources are omitted"
  value       = { for k, v in google_vertex_ai_deployment_resource_pool.vertex_ai_deployment_resource_pools : k => one(v.dedicated_resources) if v.dedicated_resources != null && length(v.dedicated_resources) > 0 }
}
output "vertex_ai_deployment_resource_pools_deletion_policy" {
  description = "Map of deletion_policy values across all vertex_ai_deployment_resource_pools, keyed the same as var.vertex_ai_deployment_resource_pools except keys with no deletion_policy are omitted"
  value       = { for k, v in google_vertex_ai_deployment_resource_pool.vertex_ai_deployment_resource_pools : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "vertex_ai_deployment_resource_pools_name" {
  description = "Map of name values across all vertex_ai_deployment_resource_pools, keyed the same as var.vertex_ai_deployment_resource_pools except keys with no name are omitted"
  value       = { for k, v in google_vertex_ai_deployment_resource_pool.vertex_ai_deployment_resource_pools : k => v.name if v.name != null && length(v.name) > 0 }
}
output "vertex_ai_deployment_resource_pools_project" {
  description = "Map of project values across all vertex_ai_deployment_resource_pools, keyed the same as var.vertex_ai_deployment_resource_pools except keys with no project are omitted"
  value       = { for k, v in google_vertex_ai_deployment_resource_pool.vertex_ai_deployment_resource_pools : k => v.project if v.project != null && length(v.project) > 0 }
}
output "vertex_ai_deployment_resource_pools_region" {
  description = "Map of region values across all vertex_ai_deployment_resource_pools, keyed the same as var.vertex_ai_deployment_resource_pools except keys with no region are omitted"
  value       = { for k, v in google_vertex_ai_deployment_resource_pool.vertex_ai_deployment_resource_pools : k => v.region if v.region != null && length(v.region) > 0 }
}

