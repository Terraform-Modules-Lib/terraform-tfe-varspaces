variable "workspaces" {
  type = map(object(
    organization = string
    workspace = string
  ))
}
