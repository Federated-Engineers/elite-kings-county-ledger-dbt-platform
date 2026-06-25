module "prod_database" {
  source = "../modules/database"

  database_name = "PROD_DB"
  schema_name   = ["BRONZE", "SILVER", "GOLD"]
}