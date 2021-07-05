terraform {
  required_providers {
    tfe = {
      source = "hashicorp/tfe"
      version = "0.25.3"
    }
  }
}

data "tfe_workspace" "workspaces" {
  for_each = { for ws in var.workspaces:
                 "${ws.organization}/${ws.workspace}" => ws
             }
   
  name = each.value.workspace
  organization = each.value.organization
}

resource "tfe_variable" "variable" {
  for_each = data.tfe_workspace.workspaces
  
  key = var.key
  value = var.value
  category = var.category
  description = var.description
  sensitive = var.sensitive
  hcl = var.hcl
  
  workspace_id = each.value.id
}
