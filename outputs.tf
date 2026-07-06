output "mssql_server_microsoft_support_auditing_policies" {
  description = "All mssql_server_microsoft_support_auditing_policy resources"
  value       = azurerm_mssql_server_microsoft_support_auditing_policy.mssql_server_microsoft_support_auditing_policies
  sensitive   = true
}
output "mssql_server_microsoft_support_auditing_policies_blob_storage_endpoint" {
  description = "List of blob_storage_endpoint values across all mssql_server_microsoft_support_auditing_policies"
  value       = [for k, v in azurerm_mssql_server_microsoft_support_auditing_policy.mssql_server_microsoft_support_auditing_policies : v.blob_storage_endpoint]
}
output "mssql_server_microsoft_support_auditing_policies_enabled" {
  description = "List of enabled values across all mssql_server_microsoft_support_auditing_policies"
  value       = [for k, v in azurerm_mssql_server_microsoft_support_auditing_policy.mssql_server_microsoft_support_auditing_policies : v.enabled]
}
output "mssql_server_microsoft_support_auditing_policies_log_monitoring_enabled" {
  description = "List of log_monitoring_enabled values across all mssql_server_microsoft_support_auditing_policies"
  value       = [for k, v in azurerm_mssql_server_microsoft_support_auditing_policy.mssql_server_microsoft_support_auditing_policies : v.log_monitoring_enabled]
}
output "mssql_server_microsoft_support_auditing_policies_server_id" {
  description = "List of server_id values across all mssql_server_microsoft_support_auditing_policies"
  value       = [for k, v in azurerm_mssql_server_microsoft_support_auditing_policy.mssql_server_microsoft_support_auditing_policies : v.server_id]
}
output "mssql_server_microsoft_support_auditing_policies_storage_account_access_key" {
  description = "List of storage_account_access_key values across all mssql_server_microsoft_support_auditing_policies"
  value       = [for k, v in azurerm_mssql_server_microsoft_support_auditing_policy.mssql_server_microsoft_support_auditing_policies : v.storage_account_access_key]
  sensitive   = true
}
output "mssql_server_microsoft_support_auditing_policies_storage_account_subscription_id" {
  description = "List of storage_account_subscription_id values across all mssql_server_microsoft_support_auditing_policies"
  value       = [for k, v in azurerm_mssql_server_microsoft_support_auditing_policy.mssql_server_microsoft_support_auditing_policies : v.storage_account_subscription_id]
  sensitive   = true
}

