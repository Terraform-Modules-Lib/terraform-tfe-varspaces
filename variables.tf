variable "workspaces" {
  type = list(object({
    organization = string
    workspace = string
  }))
}

variable "key" {
  type = string
}

variable "value" {
  type = string
}

variable "category" {
  type = string
}

variable "description" {
  type = string
  default = ""
}

variable "sensitive" {
  type = bool
  default = false
}

variable "hcl" {
  type = bool
  default = false
}


