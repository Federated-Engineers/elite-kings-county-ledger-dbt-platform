SELECT DISTINCT
    customer_id::varchar         AS customer_id,
    account_id::varchar          AS account_id,
    email::varchar               AS email,
    full_name::varchar           AS full_name,
    source::varchar              AS source,
    tier::varchar                AS tier,
    is_tax_exempt::boolean       AS is_tax_exempt,
    created_at::timestamp        AS created_at,

FROM {{ source('bronze', 'customers') }}