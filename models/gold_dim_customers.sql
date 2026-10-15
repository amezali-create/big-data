select
    customer_id,
    customer_name,
    segment,
    city,
    country
from {{ ref('silver_customers') }}
