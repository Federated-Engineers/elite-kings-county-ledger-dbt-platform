SELECT DISTINCT
    intent_id::varchar AS payment_intent_id,
    account_id::varchar AS account_id,
    customer_id::varchar AS customer_id,
    amount_in_cents::integer AS amount_in_cents,
    currency::varchar AS currency,
    status::varchar AS payment_status,
    payment_method_type::varchar AS payment_method,
    error_code::varchar AS error_code,
    processed_at::timestamp AS processed_at

FROM {{ source('bronze', 'payment_intents') }}
