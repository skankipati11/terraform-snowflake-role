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