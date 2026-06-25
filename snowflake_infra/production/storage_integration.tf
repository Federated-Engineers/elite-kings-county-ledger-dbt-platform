resource "snowflake_storage_integration_aws" "storage_integration" {
  name             = "PROD_S3_RAW_STORAGE_INTEGRATION"
  enabled          = true
  storage_provider = "S3"

  storage_allowed_locations = ["s3://kings-county-raw-ingestion/raw/"]
  storage_aws_role_arn      = "arn:aws:iam::049417293525:role/elite-snowflake-role"
}
