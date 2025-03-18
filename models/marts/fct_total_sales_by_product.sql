with lineitems as (
    select * from {{ ref('stg_tpch_sf1__lineitems') }}
)

select
    part_key,
    sum(extended_price) as total_sales,
    sum(quantity) as total_quantity,
    sum(discount) as total_discount,
    sum(tax) as total_tax
from lineitems
group by part_key
