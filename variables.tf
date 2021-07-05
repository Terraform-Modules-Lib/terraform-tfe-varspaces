variable "workspaces" {
  type = list(object(
    organization = string
    workspace = string
  ))
}
