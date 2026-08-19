variable registered_consumers {
    type = list(object({
        workspace_name = string
        customer_prefix = string
    }))    
}

variable project_id {
    type = string
    description = "Project ID to deploy producer workspaces into."
}