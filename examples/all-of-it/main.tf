module "ns" {
  source        = "../../"
  create_parent = false
  namespace     = "thismightwork"
  create_policy = false
  policy_name   = "admin"
  policy_file   = "admin.hcl"
}


module "namespace-policy-def-parent" {
  source            = "../../"
  create_parent     = true
  parent_namespace  = "never"
  namespace         = "gonnagiveyouup"
  create_policy     = true
  policy_name       = "nevergonnaletyoudown"
  policy_definition = <<-EOT
    path "*" {
      capabilities = ["create", "read", "update", "delete", "list", "sudo"]
    }
  EOT
}
