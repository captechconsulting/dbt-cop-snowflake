select
    c.customer_key,
    c.customer_name,
    sum(o.total_price) as total_sales
from {{ ref('stg_tpch_sf1__customers') }} as c
inner join {{ ref('stg_tpch_sf1__orders') }} as o
    on c.customer_key = o.customer_key
group by c.customer_key, c.customer_name
