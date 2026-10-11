output "compute_servergroup_v2s_id" {
  description = "Map of id values across all compute_servergroup_v2s, keyed the same as var.compute_servergroup_v2s except keys with no id are omitted"
  value       = { for k, v in openstack_compute_servergroup_v2.compute_servergroup_v2s : k => v.id if v.id != null && length(v.id) > 0 }
}
output "compute_servergroup_v2s_members" {
  description = "Map of members values across all compute_servergroup_v2s, keyed the same as var.compute_servergroup_v2s except keys with no members are omitted"
  value       = { for k, v in openstack_compute_servergroup_v2.compute_servergroup_v2s : k => v.members if v.members != null && length(v.members) > 0 }
}
output "compute_servergroup_v2s_name" {
  description = "Map of name values across all compute_servergroup_v2s, keyed the same as var.compute_servergroup_v2s except keys with no name are omitted"
  value       = { for k, v in openstack_compute_servergroup_v2.compute_servergroup_v2s : k => v.name if v.name != null && length(v.name) > 0 }
}
output "compute_servergroup_v2s_policies" {
  description = "Map of policies values across all compute_servergroup_v2s, keyed the same as var.compute_servergroup_v2s except keys with no policies are omitted"
  value       = { for k, v in openstack_compute_servergroup_v2.compute_servergroup_v2s : k => v.policies if v.policies != null && length(v.policies) > 0 }
}
output "compute_servergroup_v2s_region" {
  description = "Map of region values across all compute_servergroup_v2s, keyed the same as var.compute_servergroup_v2s except keys with no region are omitted"
  value       = { for k, v in openstack_compute_servergroup_v2.compute_servergroup_v2s : k => v.region if v.region != null && length(v.region) > 0 }
}
output "compute_servergroup_v2s_rules" {
  description = "Map of rules values across all compute_servergroup_v2s, keyed the same as var.compute_servergroup_v2s except keys with no rules are omitted"
  value       = { for k, v in openstack_compute_servergroup_v2.compute_servergroup_v2s : k => one(v.rules) if v.rules != null && length(v.rules) > 0 }
}
output "compute_servergroup_v2s_value_specs" {
  description = "Map of value_specs values across all compute_servergroup_v2s, keyed the same as var.compute_servergroup_v2s except keys with no value_specs are omitted"
  value       = { for k, v in openstack_compute_servergroup_v2.compute_servergroup_v2s : k => v.value_specs if v.value_specs != null && length(v.value_specs) > 0 }
}

