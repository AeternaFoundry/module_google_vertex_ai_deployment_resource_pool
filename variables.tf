variable "vertex_ai_deployment_resource_pools" {
  description = <<EOT
Map of vertex_ai_deployment_resource_pools, attributes below
Required:
    - name
Optional:
    - deletion_policy
    - project
    - region
    - dedicated_resources (block):
        - autoscaling_metric_specs (optional, block):
            - metric_name (required)
            - target (optional)
        - machine_spec (required, block):
            - accelerator_count (optional)
            - accelerator_type (optional)
            - machine_type (optional)
        - max_replica_count (optional)
        - min_replica_count (required)
    - timeouts (block):
        - create (optional)
        - delete (optional)
EOT

  type = map(object({
    name            = string
    deletion_policy = optional(string)
    project         = optional(string)
    region          = optional(string)
    dedicated_resources = optional(object({
      autoscaling_metric_specs = optional(list(object({
        metric_name = string
        target      = optional(number)
      })))
      machine_spec = object({
        accelerator_count = optional(number)
        accelerator_type  = optional(string)
        machine_type      = optional(string)
      })
      max_replica_count = optional(number)
      min_replica_count = number
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
    }))
  }))
}

