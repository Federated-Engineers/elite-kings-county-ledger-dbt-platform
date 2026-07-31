select *
from {{ source('bronze', 'subscriptions') }}