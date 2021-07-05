variable "workspaces" {
  type = list(object({
    organization = string
    workspace = string
  }))
}

variable "key" {
  type = string
  description = "(Required) Name of the variable."
}

variable "value" {
  type = string
  description = "(Required) Value of the variable."
}

variable "category" {
  type = string
  description = "(Required) Whether this is a Terraform or environment variable. Valid values are <<terraform>> or <<env>>."
  
  validation {
    condition = contains(["terraform", "env"], var.category)
    error_message = "Valid values are <<terraform>> or <<env>>."
  }
}

variable "description" {
  type = string
  default = ""
  description = "(Optional) Description of the variable."
}

variable "sensitive" {
  type = bool
  default = false
  description = "(Optional) Whether the value is sensitive. If true then the variable is written once and not visible thereafter. Defaults to false."
}

variable "hcl" {
  type = bool
  default = false
  description = "Optional) Whether to evaluate the value of the variable as a string of HCL code. Has no effect for environment variables. Defaults to false."
}


