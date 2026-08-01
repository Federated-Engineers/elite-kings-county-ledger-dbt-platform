SELECT
    c.customer_id,
    c.full_name,
    s.subscription_status,
    p.processed_at

FROM {{ ref('dim_customers') }} c

JOIN {{ ref('fact_subscriptions') }} s
ON c.customer_id=s.customer_id

JOIN {{ ref('fact_payment_intents') }} p
ON c.customer_id=p.customer_id

WHERE
    s.subscription_status='past_due'
AND
    p.payment_status='succeeded'
AND
    p.processed_at >= dateadd(hour,-24,current_timestamp())