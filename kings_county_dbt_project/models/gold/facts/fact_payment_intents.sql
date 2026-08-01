SELECT
    payment_intent_id,
    account_id,
    customer_id,
    amount_in_cents,
    currency,
    payment_status,
    payment_method,
    error_code,
    processed_at,
    processed_at::date as processed_date,
    processed_at::time as processed_time

FROM {{ ref('stg_payment_intents') }}