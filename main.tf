data "azurerm_key_vault_secret" "storage_account_access_key" {
  for_each     = { for k, v in var.mssql_server_microsoft_support_auditing_policies : k => v if v.storage_account_access_key_key_vault_id != null && v.storage_account_access_key_key_vault_secret_name != null }
  name         = each.value.storage_account_access_key_key_vault_secret_name
  key_vault_id = each.value.storage_account_access_key_key_vault_id
}
data "azurerm_key_vault_secret" "storage_account_subscription_id" {
  for_each     = { for k, v in var.mssql_server_microsoft_support_auditing_policies : k => v if v.storage_account_subscription_id_key_vault_id != null && v.storage_account_subscription_id_key_vault_secret_name != null }
  name         = each.value.storage_account_subscription_id_key_vault_secret_name
  key_vault_id = each.value.storage_account_subscription_id_key_vault_id
}
resource "azurerm_mssql_server_microsoft_support_auditing_policy" "mssql_server_microsoft_support_auditing_policies" {
  for_each = var.mssql_server_microsoft_support_auditing_policies

  server_id                       = each.value.server_id
  blob_storage_endpoint           = each.value.blob_storage_endpoint
  enabled                         = each.value.enabled
  log_monitoring_enabled          = each.value.log_monitoring_enabled
  storage_account_access_key      = each.value.storage_account_access_key != null ? each.value.storage_account_access_key : try(data.azurerm_key_vault_secret.storage_account_access_key[each.key].value, null)
  storage_account_subscription_id = each.value.storage_account_subscription_id != null ? each.value.storage_account_subscription_id : try(data.azurerm_key_vault_secret.storage_account_subscription_id[each.key].value, null)
}

