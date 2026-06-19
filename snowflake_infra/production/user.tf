module "ecs_user" {
  source = "../modules/users"

  user_name         = "ECS_USER"
  password     = data.aws_ssm_parameter.ecs_user_password.value

  default_role = snowflake_account_role.ecs.name
  default_warehouse = module.prod_service_wh.wh_name

}

module "engineer_user" {
  source = "../modules/users"

  user_name         = "ENGINEER_USER"
  password     = data.aws_ssm_parameter.engineer_user_password.value

  default_role = snowflake_account_role.engineer.name
  default_warehouse = module.prod_human_wh.wh_name

}

module "analyst_user" {
  source = "../modules/users"

  user_name         = "ANALYST_USER"
  password     = data.aws_ssm_parameter.analyst_user_password.value

  default_role = snowflake_account_role.analyst.name
  default_warehouse = module.prod_human_wh.wh_name

}