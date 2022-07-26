variable "namespace" {
  type        = string
  description = "(Optional) Namespace that will be created as a part of the module execution"
  default     = null
}

variable "parent_namespace" {
  type        = string
  description = "(Optional) Parent Namespace path where the child namespace will be created. If not specified, var.namespace will be created at the root."
  default     = null
}

variable "create_parent" {
  type        = bool
  description = "(Optional) Boolean that allows for the creation of the parent_namespace. The var.namespace will be created under this object if set to true"
  default     = false
}


variable "policy_name" {
  type        = string
  description = "(Optional) Name of the policy that will be created. Required if var.create_policy is set to true"
  default     = ""
}

variable "create_policy" {
  type        = bool
  description = "(Optional) Boolean that allows for the creation of a policy as a part of the module execution. If this is set to true then policy_name and either policy_definition or policy_file are required as inputs"
  default     = false
}

variable "policy_definition" {
  type        = any
  description = "(Optional) Raw Policy definition that can be supplied as a multi-line input value"
  default     = ""
}

variable "policy_file" {
  type        = string
  description = "(Optional) Name of the policy file (policy.hcl) and location to it from the current directory where Terraform is being executed."
  default     = ""
}
