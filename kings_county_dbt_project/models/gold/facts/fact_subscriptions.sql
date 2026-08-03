SELECT
    subscription_id,
    customer_id,
    account_id,
    plan_id,
    subscription_status,
    billing_interval,
    current_period_start,
    current_period_start::date AS current_period_start_date,
    current_period_start::time AS current_period_start_time,
    current_period_end,
    current_period_end::date AS current_period_end_date,
    current_period_end::time AS current_period_end_time,
    canceled_at,
    canceled_at::date AS canceled_date,
    canceled_at::time AS canceled_time

FROM {{ ref('stg_subscriptions') }}
