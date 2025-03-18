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
from orders as o
inner join customers as c on o.customer_key = c.customer_key
inner join nations as n on c.customer_nation_key = n.nation_key
inner join regions as r on n.nation_region_key = r.region_key
group by r.region_key, r.region_name
