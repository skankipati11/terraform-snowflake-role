provider "snowflake" {
  organization_name = "xodjopc"
  account_name      = "jtc04659"
  user              = "SKANKIPATI"
  role              = "ACCOUNTADMIN"
  authenticator     = "SNOWFLAKE_JWT"
  private_key       = var.snowflake_private_key
}

resource "snowflake_database" "this" {
  name = "TEST_DB"
}

module "snowflake_role" {
  source = "../../"

  name = "SIMPLE_ROLE"

  account_grants = [
    {
      privileges = ["CREATE DATABASE"]
    }
  ]

  account_objects_grants = {
    "DATABASE" = [
      {
        all_privileges = true
        object_name    = snowflake_database.this.name
      }
    ]
  }
}