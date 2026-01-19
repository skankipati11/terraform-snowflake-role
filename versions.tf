terraform {
  required_providers {
    snowflake = {
      source  = "snowflakedb/snowflake"     
    }
    context = {
      source  = "cloudposse/context"      
    }
  }
}

provider "snowflake" {
  organization_name = "xodjopc"
  account_name      = "jtc04659"
  user              = "SKANKIPATI"
  role              = "ACCOUNTADMIN"
  authenticator     = "SNOWFLAKE_JWT"
  private_key       = var.snowflake_private_key
}