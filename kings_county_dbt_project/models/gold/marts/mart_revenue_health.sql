SELECT
    a.account_id,
    a.business_name,
    p.payment_method,
    sum(p.amount_in_cents) / 100 AS tpv

FROM {{ ref('fact_payment_intents') }} AS p

INNER JOIN {{ ref('dim_accounts') }} AS a
    ON p.account_id = a.account_id

WHERE
    p.payment_status = 'succeeded'
    AND
    p.processed_at >= dateadd(DAY, -30, current_timestamp())

GROUP BY
    a.account_id,
    a.business_name,
    p.payment_method
