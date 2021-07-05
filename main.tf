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
  
  name         = "my-workspace-name"
  organization = "my-org-name"
}
