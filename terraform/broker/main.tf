
resource tfe_workspace producers {
    for_each = { for consumer in var.registered_consumers : consumer.workspace_name => {
        workspace_name = each.value.workspace_name
        customer_prefix = each.value.customer_prefix
    }}
    name = each.value.workspace_name
    project_id = var.project_id
      organization      = data.tfe_organization.scullycorp.name
  working_directory = "/terraform/producer"
  trigger_patterns  = ["/terraform/producer/**/*"]
  vcs_repo {
    identifier         = "robertpscully/hcpt-pcbiac-demo"
    ingress_submodules = false
    oauth_token_id     = "ot-FXmPPwWnWdUtBx5Z"
  }
  
}