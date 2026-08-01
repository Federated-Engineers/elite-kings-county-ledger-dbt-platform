SELECT
    subscription_id,
    customer_id,
    account_id,
    plan_id,
    subscription_status,
    billing_interval,
    current_period_start,
    current_period_start::date as current_period_start_date,
    current_period_start::time as current_period_start_time,
    current_period_end,
    current_period_end::date as current_period_end_date,
    current_period_end::time as current_period_end_time,
    canceled_at,
    canceled_at::date as canceled_date,
    canceled_at::time as canceled_time

from {{ ref('stg_subscriptions') }}