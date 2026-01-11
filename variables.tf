variable "mssql_server_microsoft_support_auditing_policys" {
  description = <<EOT
Map of mssql_server_microsoft_support_auditing_policys, attributes below
Required:
    - server_id
Optional:
    - blob_storage_endpoint
    - enabled
    - log_monitoring_enabled
    - storage_account_access_key
    - storage_account_subscription_id
EOT

  type = map(object({
    server_id                       = string
    blob_storage_endpoint           = optional(string)
    enabled                         = optional(bool, true)
    log_monitoring_enabled          = optional(bool, true)
    storage_account_access_key      = optional(string)
    storage_account_subscription_id = optional(string)
  }))
}

