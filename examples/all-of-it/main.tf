# Module call that creates a namespace and uses a local file to create a policy definition
module "ns" {
  source      = "../../"
  namespace   = "thismightwork"
  policy_name = "admin"
  policy_file = "admin.hcl"
}


# Module call that creates the parent namespace and the child namespace with a policy definition
module "namespace-policy-def-parent" {
  source            = "../../"
  create_parent     = true
  parent_namespace  = "never"
  namespace         = "gonnagiveyouup"
  policy_name       = "nevergonnaletyoudown"
  policy_definition = <<-EOT
    path "*" {
      capabilities = ["create", "read", "update", "delete", "list", "sudo"]
    }
  EOT
}
