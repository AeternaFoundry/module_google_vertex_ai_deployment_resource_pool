resource "google_vertex_ai_deployment_resource_pool" "vertex_ai_deployment_resource_pools" {
  for_each = var.vertex_ai_deployment_resource_pools

  name            = each.value.name
  deletion_policy = each.value.deletion_policy
  project         = each.value.project
  region          = each.value.region

  dynamic "dedicated_resources" {
    for_each = each.value.dedicated_resources != null ? [each.value.dedicated_resources] : []
    content {
      dynamic "autoscaling_metric_specs" {
        for_each = dedicated_resources.value.autoscaling_metric_specs != null ? dedicated_resources.value.autoscaling_metric_specs : []
        content {
          metric_name = autoscaling_metric_specs.value.metric_name
          target      = autoscaling_metric_specs.value.target
        }
      }
      machine_spec {
        accelerator_count = dedicated_resources.value.machine_spec.accelerator_count
        accelerator_type  = dedicated_resources.value.machine_spec.accelerator_type
        machine_type      = dedicated_resources.value.machine_spec.machine_type
      }
      max_replica_count = dedicated_resources.value.max_replica_count
      min_replica_count = dedicated_resources.value.min_replica_count
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
    }
  }
}

