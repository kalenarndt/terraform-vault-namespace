# terraform-vault-namespace

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >=1.2.0 |
| <a name="requirement_vault"></a> [vault](#requirement\_vault) | >=2.22.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_vault"></a> [vault](#provider\_vault) | 3.7.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [vault_namespace.ns](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/resources/namespace) | resource |
| [vault_namespace.parent](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/resources/namespace) | resource |
| [vault_policy.pol](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/resources/policy) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_create_parent"></a> [create\_parent](#input\_create\_parent) | (Optional) Boolean that allows for the creation of the parent\_namespace. The var.namespace will be created under this object if set to true | `bool` | `false` | no |
| <a name="input_create_policy"></a> [create\_policy](#input\_create\_policy) | (Optional) Boolean that allows for the creation of a policy as a part of the module execution. If this is set to true then policy\_name and either policy\_definition or policy\_file are required as inputs | `bool` | `false` | no |
| <a name="input_namespace"></a> [namespace](#input\_namespace) | (Optional) Namespace that will be created as a part of the module execution | `string` | `null` | no |
| <a name="input_parent_namespace"></a> [parent\_namespace](#input\_parent\_namespace) | (Optional) Parent Namespace path where the child namespace will be created. If not specified, var.namespace will be created at the root. | `string` | `null` | no |
| <a name="input_policy_definition"></a> [policy\_definition](#input\_policy\_definition) | (Optional) Raw Policy definition that can be supplied as a multi-line input value | `any` | `""` | no |
| <a name="input_policy_file"></a> [policy\_file](#input\_policy\_file) | (Optional) Name of the policy file (policy.hcl) and location to it from the current directory where Terraform is being executed. | `string` | `""` | no |
| <a name="input_policy_name"></a> [policy\_name](#input\_policy\_name) | (Optional) Name of the policy that will be created. Required if var.create\_policy is set to true | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_namespace"></a> [namespace](#output\_namespace) | Output of the namespace resource that was created |
| <a name="output_namespace_path"></a> [namespace\_path](#output\_namespace\_path) | Full path of the namespace that has been created |
| <a name="output_parent_namespace"></a> [parent\_namespace](#output\_parent\_namespace) | Path of the parent namespace resource that was created. Defaults to an empty map if var.create\_parent = false |
| <a name="output_policy"></a> [policy](#output\_policy) | Name of the policy that has been created if var.create\_policy = true |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
