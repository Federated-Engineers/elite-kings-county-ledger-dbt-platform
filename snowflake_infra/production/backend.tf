terraform {
  backend "s3" {
    bucket = "federated-engineers-production-elite-kings-county-tfstate"
    key    = "production/terraform.tfstate"
    region = "eu-central-1"
  }
}
