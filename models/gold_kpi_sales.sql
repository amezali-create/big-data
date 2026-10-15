select
    st.region,
    st.city,
    count(distinct s.sale_id) as total_orders,
    sum(s.total_amount) as total_revenue
from {{ ref('silver_sales') }} s
left join {{ ref('gold_dim_stores') }} st on s.store_id = st.store_id
group by st.region, st.city
