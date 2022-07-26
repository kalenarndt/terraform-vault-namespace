resource "vault_namespace" "parent" {
  count = var.create_parent ? 1 : 0
  path  = var.parent_namespace
}

resource "vault_namespace" "ns" {
  namespace = var.create_parent ? vault_namespace.parent[0].path : var.parent_namespace
  path      = var.namespace
}

resource "vault_policy" "pol" {
  count     = var.policy_name != "" && (var.policy_definition != "" || var.policy_file != "") ? 1 : 0
  namespace = vault_namespace.ns.path_fq
  name      = var.policy_name
  policy    = var.policy_file != "" ? file("${path.root}/${var.policy_file}") : var.policy_definition
}
