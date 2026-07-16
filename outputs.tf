output "mssql_server_microsoft_support_auditing_policies_id" {
  description = "Map of id values across all mssql_server_microsoft_support_auditing_policies, keyed the same as var.mssql_server_microsoft_support_auditing_policies"
  value       = { for k, v in azurerm_mssql_server_microsoft_support_auditing_policy.mssql_server_microsoft_support_auditing_policies : k => v.id if v.id != null && length(v.id) > 0 }
}
output "mssql_server_microsoft_support_auditing_policies_blob_storage_endpoint" {
  description = "Map of blob_storage_endpoint values across all mssql_server_microsoft_support_auditing_policies, keyed the same as var.mssql_server_microsoft_support_auditing_policies"
  value       = { for k, v in azurerm_mssql_server_microsoft_support_auditing_policy.mssql_server_microsoft_support_auditing_policies : k => v.blob_storage_endpoint if v.blob_storage_endpoint != null && length(v.blob_storage_endpoint) > 0 }
}
output "mssql_server_microsoft_support_auditing_policies_enabled" {
  description = "Map of enabled values across all mssql_server_microsoft_support_auditing_policies, keyed the same as var.mssql_server_microsoft_support_auditing_policies"
  value       = { for k, v in azurerm_mssql_server_microsoft_support_auditing_policy.mssql_server_microsoft_support_auditing_policies : k => v.enabled if v.enabled != null }
}
output "mssql_server_microsoft_support_auditing_policies_log_monitoring_enabled" {
  description = "Map of log_monitoring_enabled values across all mssql_server_microsoft_support_auditing_policies, keyed the same as var.mssql_server_microsoft_support_auditing_policies"
  value       = { for k, v in azurerm_mssql_server_microsoft_support_auditing_policy.mssql_server_microsoft_support_auditing_policies : k => v.log_monitoring_enabled if v.log_monitoring_enabled != null }
}
output "mssql_server_microsoft_support_auditing_policies_server_id" {
  description = "Map of server_id values across all mssql_server_microsoft_support_auditing_policies, keyed the same as var.mssql_server_microsoft_support_auditing_policies"
  value       = { for k, v in azurerm_mssql_server_microsoft_support_auditing_policy.mssql_server_microsoft_support_auditing_policies : k => v.server_id if v.server_id != null && length(v.server_id) > 0 }
}
output "mssql_server_microsoft_support_auditing_policies_storage_account_access_key" {
  description = "Map of storage_account_access_key values across all mssql_server_microsoft_support_auditing_policies, keyed the same as var.mssql_server_microsoft_support_auditing_policies"
  value       = { for k, v in azurerm_mssql_server_microsoft_support_auditing_policy.mssql_server_microsoft_support_auditing_policies : k => v.storage_account_access_key if v.storage_account_access_key != null && length(v.storage_account_access_key) > 0 }
  sensitive   = true
}
output "mssql_server_microsoft_support_auditing_policies_storage_account_subscription_id" {
  description = "Map of storage_account_subscription_id values across all mssql_server_microsoft_support_auditing_policies, keyed the same as var.mssql_server_microsoft_support_auditing_policies"
  value       = { for k, v in azurerm_mssql_server_microsoft_support_auditing_policy.mssql_server_microsoft_support_auditing_policies : k => v.storage_account_subscription_id if v.storage_account_subscription_id != null && length(v.storage_account_subscription_id) > 0 }
  sensitive   = true
}

