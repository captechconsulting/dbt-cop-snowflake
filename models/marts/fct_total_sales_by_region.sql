with orders as (
    select * from {{ ref('stg_tpch_sf1__orders') }}
),
customers as (
    select * from {{ ref('stg_tpch_sf1__customers') }}
),
nations as (
    select * from {{ ref('stg_tpch_sf1__nations') }}
),
regions as (
    select * from {{ ref('stg_tpch_sf1__regions') }}
)

select
    r.region_key,
    r.region_name,
    sum(o.total_price) as total_sales
from orders o
join customers c on o.customer_key = c.customer_key
join nations n on c.customer_nation_key = n.nation_key
join regions r on n.nation_region_key = r.region_key
group by r.region_key, r.region_name
