output "ids" {
  for_each = tfe_variable.variable
  
  value = {
    workspace_id = each.value.workspace_id
    variable_id = each.value.id
  }
}
