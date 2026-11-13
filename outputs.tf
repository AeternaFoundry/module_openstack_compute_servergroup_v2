output "compute_servergroup_v2s_id" {
  description = "Map of id values across all compute_servergroup_v2s, keyed the same as var.compute_servergroup_v2s"
  value       = { for k, v in openstack_compute_servergroup_v2.compute_servergroup_v2s : k => v.id }
}
output "compute_servergroup_v2s_members" {
  description = "Map of members values across all compute_servergroup_v2s, keyed the same as var.compute_servergroup_v2s"
  value       = { for k, v in openstack_compute_servergroup_v2.compute_servergroup_v2s : k => v.members }
}
output "compute_servergroup_v2s_name" {
  description = "Map of name values across all compute_servergroup_v2s, keyed the same as var.compute_servergroup_v2s"
  value       = { for k, v in openstack_compute_servergroup_v2.compute_servergroup_v2s : k => v.name }
}
output "compute_servergroup_v2s_policies" {
  description = "Map of policies values across all compute_servergroup_v2s, keyed the same as var.compute_servergroup_v2s"
  value       = { for k, v in openstack_compute_servergroup_v2.compute_servergroup_v2s : k => v.policies }
}
output "compute_servergroup_v2s_region" {
  description = "Map of region values across all compute_servergroup_v2s, keyed the same as var.compute_servergroup_v2s"
  value       = { for k, v in openstack_compute_servergroup_v2.compute_servergroup_v2s : k => v.region }
}
output "compute_servergroup_v2s_rules" {
  description = "Map of rules values across all compute_servergroup_v2s, keyed the same as var.compute_servergroup_v2s"
  value       = { for k, v in openstack_compute_servergroup_v2.compute_servergroup_v2s : k => one(v.rules) }
}
output "compute_servergroup_v2s_value_specs" {
  description = "Map of value_specs values across all compute_servergroup_v2s, keyed the same as var.compute_servergroup_v2s"
  value       = { for k, v in openstack_compute_servergroup_v2.compute_servergroup_v2s : k => v.value_specs }
}

