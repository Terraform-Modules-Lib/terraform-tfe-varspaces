variable "workspaces" {
  type = list(object({
    organization = string
    workspace = string
  }))
  
  description = "A list of workspace description: {organization = \"Name of the organization.\", name = \"Name of the workspace.\"}"
}

variable "key" {
  type = string
  
  description = "Name of the variable."
}

variable "value" {
  type = string
  sensitive = true
  
  description = "Value of the variable."
}

variable "category" {
  type = string
  
  description = "Whether this is a Terraform or environment variable. Valid values are <<terraform>> or <<env>>."
  
  validation {
    condition = contains(["terraform", "env"], var.category)
    error_message = "Valid values are <<terraform>> or <<env>>."
  }
}

variable "description" {
  type = string
  
  description = "Description of the variable."
}

variable "sensitive" {
  type = bool
  
  description = "Whether the value is sensitive. If true then the variable is written once and not visible thereafter. Defaults to false."
}

variable "hcl" {
  type = bool
  
  description = "Whether to evaluate the value of the variable as a string of HCL code. Has no effect for environment variables. Defaults to false."
}


