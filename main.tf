resource "openstack_compute_servergroup_v2" "compute_servergroup_v2s" {
  for_each = var.compute_servergroup_v2s

  name        = each.value.name
  policies    = each.value.policies
  region      = each.value.region
  value_specs = each.value.value_specs

  dynamic "rules" {
    for_each = each.value.rules != null ? [each.value.rules] : []
    content {
      max_server_per_host = rules.value.max_server_per_host
    }
  }
}

