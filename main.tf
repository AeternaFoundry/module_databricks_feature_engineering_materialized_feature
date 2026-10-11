resource "databricks_feature_engineering_materialized_feature" "feature_engineering_materialized_features" {
  for_each = var.feature_engineering_materialized_features

  feature_name            = each.value.feature_name
  budget_policy_id        = each.value.budget_policy_id
  cron_schedule           = each.value.cron_schedule
  cron_schedule_trigger   = each.value.cron_schedule_trigger
  offline_store_config    = each.value.offline_store_config
  online_store_config     = each.value.online_store_config
  pipeline_schedule_state = each.value.pipeline_schedule_state
  provider_config         = each.value.provider_config
  streaming_mode          = each.value.streaming_mode
  table_trigger           = each.value.table_trigger
  tags                    = each.value.tags
}

