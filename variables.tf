variable "mssql_server_microsoft_support_auditing_policies" {
  description = <<EOT
Map of mssql_server_microsoft_support_auditing_policies, attributes below
Required:
    - server_id
Optional:
    - blob_storage_endpoint
    - enabled
    - log_monitoring_enabled
    - storage_account_access_key
    - storage_account_access_key_key_vault_id (alternative to storage_account_access_key - read from Key Vault instead)
    - storage_account_access_key_key_vault_secret_name (alternative to storage_account_access_key - read from Key Vault instead)
    - storage_account_subscription_id
    - storage_account_subscription_id_key_vault_id (alternative to storage_account_subscription_id - read from Key Vault instead)
    - storage_account_subscription_id_key_vault_secret_name (alternative to storage_account_subscription_id - read from Key Vault instead)
EOT

  type = map(object({
    server_id                                             = string
    blob_storage_endpoint                                 = optional(string)
    enabled                                               = optional(bool)
    log_monitoring_enabled                                = optional(bool)
    storage_account_access_key                            = optional(string)
    storage_account_access_key_key_vault_id               = optional(string)
    storage_account_access_key_key_vault_secret_name      = optional(string)
    storage_account_subscription_id                       = optional(string)
    storage_account_subscription_id_key_vault_id          = optional(string)
    storage_account_subscription_id_key_vault_secret_name = optional(string)
  }))
  # --- Unconfirmed validation candidates, derived from azurerm_mssql_server_microsoft_support_auditing_policy's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: server_id
  #   source:    [from validate.ServerID] !ok
  # path: server_id
  #   source:    [from validate.ServerID] err != nil
  # path: blob_storage_endpoint
  #   source:    validation.IsURLWithHTTPS(...) - no translation rule yet, add one
  # path: storage_account_access_key
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: storage_account_subscription_id
  #   condition: can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", value))
  #   message:   must be a valid UUID
}

