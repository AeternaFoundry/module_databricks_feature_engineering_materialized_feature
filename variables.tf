variable "feature_engineering_materialized_features" {
  description = <<EOT
Map of feature_engineering_materialized_features, attributes below
Required:
    - feature_name
Optional:
    - budget_policy_id
    - cron_schedule
    - cron_schedule_trigger
    - offline_store_config
    - online_store_config
    - pipeline_schedule_state
    - provider_config
    - streaming_mode
    - table_trigger
    - tags
EOT

  type = map(object({
    feature_name     = string
    budget_policy_id = optional(string)
    cron_schedule    = optional(string)
    cron_schedule_trigger = optional(object({
      cron_expression = optional(string)
      mode            = optional(string)
      timezone_id     = optional(string)
    }))
    offline_store_config = optional(object({
      catalog_name      = string
      schema_name       = string
      table_name_prefix = string
    }))
    online_store_config = optional(object({
      catalog_name      = string
      online_store_name = string
      schema_name       = string
      table_name_prefix = string
    }))
    pipeline_schedule_state = optional(string)
    provider_config = optional(object({
      workspace_id = optional(string)
    }))
    streaming_mode = optional(object({
      freshness_target = optional(string)
      mode             = optional(string)
    }))
    table_trigger = optional(object({
    }))
    tags = optional(map(string))
  }))
}

