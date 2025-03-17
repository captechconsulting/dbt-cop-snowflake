select
    o.*,
    li.part_key,
    li.supplier_key,
    li.line_number,
    li.quantity,
    li.extended_price,
    li.discount,
    li.tax,
    li.return_flag,
    li.line_status,
    li.ship_date,
    li.commit_date,
    li.receipt_date,
    li.ship_instructions,
    li.ship_mode,
    li.line_comment
from {{ ref('stg_tpch_sf1__orders') }} as o
left join {{ ref('stg_tpch_sf1__lineitems') }} as li
    on o.order_key = li.order_key
