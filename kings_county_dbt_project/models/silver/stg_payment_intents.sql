select *
from {{ source('bronze', 'payment_intents') }}