resource "snowflake_external_table" "accounts" {
  database    = "PROD_DB"
  schema      = "GOLD"
  name        = "accounts"
  file_format = "FORMAT_NAME = PROD_DB.BRONZE.BRONZE_CSV_FORMAT"
  location    = "@PROD_DB.GOLD.BRONZE_RAW_STAGE/accounts"

  column {
    name = "id"
    type = "int"
    as   = "VALUE"
  }

}