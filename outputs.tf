output "mssql_server_microsoft_support_auditing_policies_blob_storage_endpoint" {
  description = "Map of blob_storage_endpoint values across all mssql_server_microsoft_support_auditing_policies, keyed the same as var.mssql_server_microsoft_support_auditing_policies"
  value       = { for k, v in azurerm_mssql_server_microsoft_support_auditing_policy.mssql_server_microsoft_support_auditing_policies : k => v.blob_storage_endpoint }
}
output "mssql_server_microsoft_support_auditing_policies_enabled" {
  description = "Map of enabled values across all mssql_server_microsoft_support_auditing_policies, keyed the same as var.mssql_server_microsoft_support_auditing_policies"
  value       = { for k, v in azurerm_mssql_server_microsoft_support_auditing_policy.mssql_server_microsoft_support_auditing_policies : k => v.enabled }
}
output "mssql_server_microsoft_support_auditing_policies_log_monitoring_enabled" {
  description = "Map of log_monitoring_enabled values across all mssql_server_microsoft_support_auditing_policies, keyed the same as var.mssql_server_microsoft_support_auditing_policies"
  value       = { for k, v in azurerm_mssql_server_microsoft_support_auditing_policy.mssql_server_microsoft_support_auditing_policies : k => v.log_monitoring_enabled }
}
output "mssql_server_microsoft_support_auditing_policies_server_id" {
  description = "Map of server_id values across all mssql_server_microsoft_support_auditing_policies, keyed the same as var.mssql_server_microsoft_support_auditing_policies"
  value       = { for k, v in azurerm_mssql_server_microsoft_support_auditing_policy.mssql_server_microsoft_support_auditing_policies : k => v.server_id }
}
output "mssql_server_microsoft_support_auditing_policies_storage_account_access_key" {
  description = "Map of storage_account_access_key values across all mssql_server_microsoft_support_auditing_policies, keyed the same as var.mssql_server_microsoft_support_auditing_policies"
  value       = { for k, v in azurerm_mssql_server_microsoft_support_auditing_policy.mssql_server_microsoft_support_auditing_policies : k => v.storage_account_access_key }
  sensitive   = true
}
output "mssql_server_microsoft_support_auditing_policies_storage_account_subscription_id" {
  description = "Map of storage_account_subscription_id values across all mssql_server_microsoft_support_auditing_policies, keyed the same as var.mssql_server_microsoft_support_auditing_policies"
  value       = { for k, v in azurerm_mssql_server_microsoft_support_auditing_policy.mssql_server_microsoft_support_auditing_policies : k => v.storage_account_subscription_id }
  sensitive   = true
}

