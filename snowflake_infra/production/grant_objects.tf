resource "snowflake_grant_privileges_to_account_role" "ecs_all_tables_existing" {
  account_role_name = snowflake_account_role.ecs.name
  all_privileges    = true

  on_schema_object {
    all {
      object_type_plural = "TABLES"
      in_database        = "PROD_DB"
    }
  }
}

resource "snowflake_grant_privileges_to_account_role" "ecs_all_tables_future" {
  account_role_name = snowflake_account_role.ecs.name
  all_privileges    = true

  on_schema_object {
    future {
      object_type_plural = "TABLES"
      in_database        = "PROD_DB"
    }
  }
}

resource "snowflake_grant_privileges_to_account_role" "ecs_all_views_existing" {
  account_role_name = snowflake_account_role.ecs.name
  all_privileges    = true

  on_schema_object {
    all {
      object_type_plural = "VIEWS"
      in_database        = "PROD_DB"
    }
  }
}

resource "snowflake_grant_privileges_to_account_role" "ecs_all_views_future" {
  account_role_name = snowflake_account_role.ecs.name
  all_privileges    = true

  on_schema_object {
    future {
      object_type_plural = "VIEWS"
      in_database        = "PROD_DB"
    }
  }
}

# ANALYST objects
resource "snowflake_grant_privileges_to_account_role" "analyst_gold_tables_existing" {
  account_role_name = snowflake_account_role.analyst.name
  privileges        = ["SELECT"]

  on_schema_object {
    all {
      object_type_plural = "TABLES"
      in_schema          = "PROD_DB.GOLD"
    }
  }
}

resource "snowflake_grant_privileges_to_account_role" "analyst_gold_tables_future" {
  account_role_name = snowflake_account_role.analyst.name
  privileges        = ["SELECT"]

  on_schema_object {
    future {
      object_type_plural = "TABLES"
      in_schema          = "PROD_DB.GOLD"
    }
  }
}

resource "snowflake_grant_privileges_to_account_role" "analyst_gold_views_existing" {
  account_role_name = snowflake_account_role.analyst.name
  privileges        = ["SELECT"]

  on_schema_object {
    all {
      object_type_plural = "VIEWS"
      in_schema          = "PROD_DB.GOLD"
    }
  }
}

resource "snowflake_grant_privileges_to_account_role" "analyst_gold_views_future" {
  account_role_name = snowflake_account_role.analyst.name
  privileges        = ["SELECT"]

  on_schema_object {
    future {
      object_type_plural = "VIEWS"
      in_schema          = "PROD_DB.GOLD"
    }
  }
}

# ENGINEER objects
resource "snowflake_grant_privileges_to_account_role" "engineer_gold_tables_existing" {
  account_role_name = snowflake_account_role.engineer.name
  privileges        = ["INSERT", "UPDATE"]

  on_schema_object {
    all {
      object_type_plural = "TABLES"
      in_schema          = "PROD_DB.GOLD"
    }
  }
}

resource "snowflake_grant_privileges_to_account_role" "engineer_gold_tables_future" {
  account_role_name = snowflake_account_role.engineer.name
  privileges        = ["INSERT", "UPDATE"]

  on_schema_object {
    future {
      object_type_plural = "TABLES"
      in_schema          = "PROD_DB.GOLD"
    }
  }
}

resource "snowflake_grant_privileges_to_account_role" "engineer_silver_tables_existing" {
  account_role_name = snowflake_account_role.engineer.name
  privileges        = ["SELECT", "INSERT", "UPDATE"]

  on_schema_object {
    all {
      object_type_plural = "TABLES"
      in_schema          = "PROD_DB.SILVER"
    }
  }
}

resource "snowflake_grant_privileges_to_account_role" "engineer_silver_tables_future" {
  account_role_name = snowflake_account_role.engineer.name
  privileges        = ["SELECT", "INSERT", "UPDATE"]

  on_schema_object {
    future {
      object_type_plural = "TABLES"
      in_schema          = "PROD_DB.SILVER"
    }
  }
}

resource "snowflake_grant_privileges_to_account_role" "engineer_silver_views_existing" {
  account_role_name = snowflake_account_role.engineer.name
  privileges        = ["SELECT"]

  on_schema_object {
    all {
      object_type_plural = "VIEWS"
      in_schema          = "PROD_DB.SILVER"
    }
  }
}

resource "snowflake_grant_privileges_to_account_role" "engineer_silver_views_future" {
  account_role_name = snowflake_account_role.engineer.name
  privileges        = ["SELECT"]

  on_schema_object {
    future {
      object_type_plural = "VIEWS"
      in_schema          = "PROD_DB.SILVER"
    }
  }
}
