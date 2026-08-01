SELECT DISTINCT
    payout_id::varchar                  AS payout_id,
    account_id::varchar                 AS account_id,
    amount_in_cents::integer            AS amount_in_cents,
    arrival_date::date                  AS arrival_date,
    status::varchar                     AS payout_status,
    destination_bank_reference::varchar AS destination_bank_reference,
    fee_deducted_in_cents::integer      AS fee_deducted_in_cents,

FROM {{ source('bronze', 'payouts') }}