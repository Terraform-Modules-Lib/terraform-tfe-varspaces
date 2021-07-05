terraform {
  required_providers {
    tfe = {
      source = "hashicorp/tfe"
      version = "0.25.3"
    }
  }
}

provider "tfe" {
  # Configuration options
}

data "tfe_workspace" "workspaces" {
  for_each = { for ws in var.workspaces:
                 "${ws.organization}/${ws.workspace}" => ws
             }
   
  name = each.value.workspace
  organization = each.value.organization
}
