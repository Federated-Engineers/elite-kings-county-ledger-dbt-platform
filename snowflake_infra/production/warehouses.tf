module "prod_service_wh" {
  source = "../modules/warehouse"

  wh_name = "PROD_SERVICE_WH"
}

module "prod_human_wh" {
  source = "../modules/warehouse"

  wh_name = "PROD_HUMAN_WH"
}