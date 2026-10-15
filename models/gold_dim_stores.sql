select
    store_id,
    store_name,
    city,
    region,
    country
from {{ ref('silver_stores') }}
