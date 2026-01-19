resource "snowflake_database" "this" {
  name = "TEST_DB"
}

module "snowflake_role" {
  source = "../../"

  name = "SIMPLE_ROLE"

  snowflake_private_key  = var.snowflake_private_key

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

