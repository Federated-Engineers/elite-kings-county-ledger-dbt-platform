select *
from {{ source('bronze', 'payouts') }}