output "ids" {
  description = "Return a list of pair workspace_id => variable_id."
  
  value = { for workspace, variable in tfe_variable.variable:
              variable.workspace_id => variable.id
          }
}
