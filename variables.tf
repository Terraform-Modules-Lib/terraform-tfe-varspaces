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
