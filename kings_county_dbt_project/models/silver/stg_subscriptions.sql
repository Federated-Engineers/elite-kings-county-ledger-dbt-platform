SELECT DISTINCT
    subscription_id::varchar          AS subscription_id,
    customer_id::varchar              AS customer_id,
    account_id::varchar               AS account_id,
    plan_id::varchar                  AS plan_id,
    status::varchar                   AS subscription_status,
    billing_interval::varchar         AS billing_interval,
    current_period_start::timestamp   AS current_period_start,
    current_period_end::timestamp     AS current_period_end,
    canceled_at::timestamp             AS canceled_at,
    
FROM {{ source('bronze', 'subscriptions') }}