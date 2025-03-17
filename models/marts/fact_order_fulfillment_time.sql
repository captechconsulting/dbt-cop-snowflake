select
    o.order_key,
    datediff(day, o.order_date, li.receipt_date) as fulfillment_time
from {{ ref('stg_tpch_sf1__orders') }} as o
inner join {{ ref('stg_tpch_sf1__lineitems') }} as li
    on o.order_key = li.order_key
