SELECT
    customer_id,
    account_id,
    email,
    full_name,
    source,
    tier,
    is_tax_exempt,
    created_at

FROM {{ ref('stg_customers') }}