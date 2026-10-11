variable "compute_servergroup_v2s" {
  description = <<EOT
Map of compute_servergroup_v2s, attributes below
Required:
    - name
Optional:
    - policies
    - region
    - value_specs
    - rules (block):
        - max_server_per_host (optional)
EOT

  type = map(object({
    name        = string
    policies    = optional(list(string))
    region      = optional(string)
    value_specs = optional(map(string))
    rules = optional(object({
      max_server_per_host = optional(number)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.compute_servergroup_v2s : (
        v.rules == null || (v.rules.max_server_per_host == null || (v.rules.max_server_per_host >= 1))
      )
    ])
    error_message = "must be at least 1"
  }
}

