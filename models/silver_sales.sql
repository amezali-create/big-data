select
    cast(sale_id as bigint) as sale_id,
    cast(customer_id as bigint) as customer_id,
    cast(product_id as bigint) as product_id,
    cast(store_id as bigint) as store_id,
    cast(total_amount as decimal(10,2)) as total_amount,
    cast(sale_date as date) as sale_date
from {{ source('bronze', 'sales_raw') }}
