variable registered_consumers {
    type = list(object({
        workspace_name = string
        customer_prefix = string
    }))    
    default = [
        {
            workspace_name = "producer_bucket_config_1"
            customer_prefix = "test"
        }
    ]
}

variable project_id {
    type = string
    description = "Project ID to deploy producer workspaces into."
}