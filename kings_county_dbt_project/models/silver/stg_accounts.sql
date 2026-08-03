SELECT DISTINCT
    account_id::varchar AS account_id,
    business_name::varchar AS business_name,
    country_code::varchar AS country_code,
    default_currency::varchar AS default_currency,
    status::varchar AS account_status,
    onboarding_date::date AS onboarding_date,
    industry_type::varchar AS industry_type

FROM {{ source('bronze', 'accounts') }}
