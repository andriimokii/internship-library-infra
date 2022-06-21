output "database_config_vars" {
  value = heroku_addon.database.config_var_values
  description = "PostgreSQL configuration for Github Action CI"
  sensitive = true
}
