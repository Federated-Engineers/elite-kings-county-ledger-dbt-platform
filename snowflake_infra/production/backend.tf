terraform {
  backend "s3" {
    bucket = "kings_county_tfstate_bucket"
    key    = "production/terraform.tfstate"
    region = "eu-central-1"
  }
}
