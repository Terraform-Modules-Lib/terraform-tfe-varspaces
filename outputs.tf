output "ids" {  
  value = { for workspace, variable in tfe_variable.variable:
              variable.workspace_id => variable.id
          }
}
