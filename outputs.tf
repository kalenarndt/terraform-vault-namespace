output "namespace_path" {
  value       = vault_namespace.ns.path_fq
  description = "Full path of the namespace that has been created"
}

output "parent_namespace" {
  value       = var.create_parent ? vault_namespace.parent[0] : {}
  description = "Path of the parent namespace resource that was created. Defaults to an empty map if var.create_parent = false"
}

output "namespace" {
  value       = vault_namespace.ns
  description = "Output of the namespace resource that was created"
}

output "policy" {
  value       = concat(vault_policy.pol.*.name, [""])[0]
  description = "Name of the policy that has been created if var.create_policy = true"
}
