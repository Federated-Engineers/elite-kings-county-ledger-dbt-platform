SELECT
    payout_id,
    account_id,
    amount_in_cents,
    arrival_date,
    payout_status,
    destination_bank_reference,
    fee_deducted_in_cents
    
FROM {{ ref('stg_payouts') }}