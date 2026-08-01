SELECT
    account_id,
    business_name,
    country_code,
    default_currency,
    industry_type,
    account_status,
    onboarding_date

FROM {{ ref('stg_accounts') }}