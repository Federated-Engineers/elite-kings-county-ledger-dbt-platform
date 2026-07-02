# Accounts table
resource "snowflake_external_table" "accounts" {
  database = "PROD_DB"
  schema   = "BRONZE"
  name     = "accounts"

  file_format = "FORMAT_NAME = PROD_DB.BRONZE.BRONZE_JSON_FORMAT"
  location    = "@PROD_DB.BRONZE.BRONZE_STAGE/accounts"

  column {
    name = "account_id"
    type = "VARCHAR"
    as   = "VALUE:account_id::VARCHAR"
  }

  column {
    name = "business_name"
    type = "VARCHAR"
    as   = "VALUE:business_name::VARCHAR"
  }

  column {
    name = "country_code"
    type = "VARCHAR"
    as   = "VALUE:country_code::VARCHAR"
  }

  column {
    name = "default_currency"
    type = "VARCHAR"
    as   = "VALUE:default_currency::VARCHAR"
  }

  column {
    name = "status"
    type = "VARCHAR"
    as   = "VALUE:status::VARCHAR"
  }

  column {
    name = "onboarding_date"
    type = "DATE"
    as   = "VALUE:onboarding_date::DATE"
  }

  column {
    name = "industry_type"
    type = "VARCHAR"
    as   = "VALUE:industry_type::VARCHAR"
  }
}


# Customers table
resource "snowflake_external_table" "customers" {
  database = "PROD_DB"
  schema   = "BRONZE"
  name     = "customers"

  file_format = "FORMAT_NAME = PROD_DB.BRONZE.BRONZE_JSON_FORMAT"
  location    = "@PROD_DB.BRONZE.BRONZE_STAGE/customers"

  column {
    name = "customer_id"
    type = "VARCHAR"
    as   = "VALUE:customer_id::VARCHAR"
  }

  column {
    name = "account_id"
    type = "VARCHAR"
    as   = "VALUE:account_id::VARCHAR"
  }

  column {
    name = "email"
    type = "VARCHAR"
    as   = "VALUE:email::VARCHAR"
  }

  column {
    name = "full_name"
    type = "VARCHAR"
    as   = "VALUE:full_name::VARCHAR"
  }

  column {
    name = "source"
    type = "VARCHAR"
    as   = "VALUE:metadata.source::VARCHAR"
  }

  column {
    name = "tier"
    type = "VARCHAR"
    as   = "VALUE:metadata.tier::VARCHAR"
  }

  column {
    name = "is_tax_exempt"
    type = "BOOLEAN"
    as   = "VALUE:is_tax_exempt::BOOLEAN"
  }

  column {
    name = "created_at"
    type = "DATETIME"
    as   = "VALUE:created_at::DATETIME"
  }
}


# Payment Intents table
resource "snowflake_external_table" "payment_intents" {
  database = "PROD_DB"
  schema   = "BRONZE"
  name     = "payment_intents"

  file_format = "FORMAT_NAME = PROD_DB.BRONZE.BRONZE_JSON_FORMAT"
  location    = "@PROD_DB.BRONZE.BRONZE_STAGE/payment_intents"

  column {
    name = "intent_id"
    type = "VARCHAR"
    as   = "VALUE:intent_id::VARCHAR"
  }

  column {
    name = "account_id"
    type = "VARCHAR"
    as   = "VALUE:account_id::VARCHAR"
  }

  column {
    name = "customer_id"
    type = "VARCHAR"
    as   = "VALUE:customer_id::VARCHAR"
  }

  column {
    name = "amount_in_cents"
    type = "INT"
    as   = "VALUE:amount_in_cents::INT"
  }

  column {
    name = "currency"
    type = "VARCHAR"
    as   = "VALUE:currency::VARCHAR"
  }

  column {
    name = "status"
    type = "VARCHAR"
    as   = "VALUE:status::VARCHAR"
  }

  column {
    name = "payment_method_type"
    type = "VARCHAR"
    as   = "VALUE:payment_method_type::VARCHAR"
  }

  column {
    name = "error_code"
    type = "VARCHAR"
    as   = "VALUE:error_code::VARCHAR"
  }

  column {
    name = "processed_at"
    type = "DATETIME"
    as   = "VALUE:processed_at::DATETIME"
  }
}


# Payouts table
resource "snowflake_external_table" "payouts" {
  database = "PROD_DB"
  schema   = "BRONZE"
  name     = "payouts"

  file_format = "FORMAT_NAME = PROD_DB.BRONZE.BRONZE_JSON_FORMAT"
  location    = "@PROD_DB.BRONZE.BRONZE_STAGE/payouts"

  column {
    name = "payout_id"
    type = "VARCHAR"
    as   = "VALUE:payout_id::VARCHAR"
  }

  column {
    name = "account_id"
    type = "VARCHAR"
    as   = "VALUE:account_id::VARCHAR"
  }

  column {
    name = "amount_in_cents"
    type = "INT"
    as   = "VALUE:amount_in_cents::INT"
  }

  column {
    name = "arrival_date"
    type = "DATE"
    as   = "VALUE:arrival_date::DATE"
  }

  column {
    name = "status"
    type = "VARCHAR"
    as   = "VALUE:status::VARCHAR"
  }

  column {
    name = "destination_bank_reference"
    type = "VARCHAR"
    as   = "VALUE:destination_bank_reference::VARCHAR"
  }

  column {
    name = "fee_deducted_in_cents"
    type = "INT"
    as   = "VALUE:fee_deducted_in_cents::INT"
  }
}


# Subscriptions table
resource "snowflake_external_table" "subscriptions" {
  database = "PROD_DB"
  schema   = "BRONZE"
  name     = "subscriptions"

  file_format = "FORMAT_NAME = PROD_DB.BRONZE.BRONZE_JSON_FORMAT"
  location    = "@PROD_DB.BRONZE.BRONZE_STAGE/subscriptions"

  column {
    name = "subscription_id"
    type = "VARCHAR"
    as   = "VALUE:subscription_id::VARCHAR"
  }

  column {
    name = "customer_id"
    type = "VARCHAR"
    as   = "VALUE:customer_id::VARCHAR"
  }

  column {
    name = "account_id"
    type = "VARCHAR"
    as   = "VALUE:account_id::VARCHAR"
  }

  column {
    name = "plan_id"
    type = "VARCHAR"
    as   = "VALUE:plan_id::VARCHAR"
  }

  column {
    name = "status"
    type = "VARCHAR"
    as   = "VALUE:status::VARCHAR"
  }

  column {
    name = "billing_interval"
    type = "VARCHAR"
    as   = "VALUE:billing_interval::VARCHAR"
  }

  column {
    name = "current_period_start"
    type = "DATETIME"
    as   = "VALUE:current_period_start::DATETIME"
  }

  column {
    name = "current_period_end"
    type = "DATETIME"
    as   = "VALUE:current_period_end::DATETIME"
  }

  column {
    name = "canceled_at"
    type = "DATETIME"
    as   = "VALUE:canceled_at::DATETIME"
  }
}