provider "context" {
  properties = {
    "environment" = {}
    "name"        = {}
  }

  values = {
    environment = "DEV"
  }
}


provider "snowflake" {

  organization_name = "xodjopc"
  account_name      = "jtc04659"
  user              = "SKANKIPATI"
  role              = "ACCOUNTADMIN"
  authenticator     = "SNOWFLAKE_JWT"
  private_key       = var.snowflake_private_key

  preview_features_enabled = [
    "snowflake_table_resource",
    "snowflake_dynamic_table_resource"
  ]
}