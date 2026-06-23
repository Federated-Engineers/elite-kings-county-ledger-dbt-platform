module "prod_service_wh" {
  source                        = "../modules/warehouse"
  resource_monitor_credit_quota = 10

  wh_name = "PROD_SERVICE_WH"
}

module "prod_human_wh" {
  source                        = "../modules/warehouse"
  resource_monitor_credit_quota = 5

  wh_name = "PROD_HUMAN_WH"
}