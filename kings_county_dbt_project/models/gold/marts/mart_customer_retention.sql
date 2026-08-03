SELECT
    c.customer_id,
    c.full_name,
    s.subscription_status,
    p.processed_at

FROM {{ ref('dim_customers') }} AS c

INNER JOIN {{ ref('fact_subscriptions') }} AS s
    ON c.customer_id = s.customer_id

INNER JOIN {{ ref('fact_payment_intents') }} AS p
    ON c.customer_id = p.customer_id

WHERE
    s.subscription_status = 'past_due'
    AND
    p.payment_status = 'succeeded'
    AND
    p.processed_at >= dateadd(HOUR, -24, current_timestamp())
