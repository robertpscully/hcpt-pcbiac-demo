variable registered_consumers {
    type = list(object({
        workspace_name = string
        customer_prefix = string
    }))
    
}

variable project_name {
    type = string
    description = "Project name to deploy producer workspaces into."
}