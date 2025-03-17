{{
    config(
        materialized = 'table'
    )
}}
with parts as (

    select * from {{ ref('stg_tpch_sf1__parts') }}

),

suppliers as (

    select * from {{ ref('stg_tpch_sf1__suppliers') }}

),

part_suppliers as (

    select * from {{ ref('stg_tpch_sf1__partsupps') }}

)

select



    {{ dbt_utils.generate_surrogate_key(['p.PART_KEY', 's.SUPPLIER_KEY']) }}
        as part_supplier_key,

    p.part_key,
    p.part_name,
    p.part_mfgr,
    p.part_brand,
    p.part_type,
    p.part_size,
    p.part_container,
    p.part_retail_price,

    s.supplier_key,
    s.supplier_name,
    s.supplier_nation_key,

    ps.available_quantity,
    ps.supply_cost
from
    parts as p
inner join
    part_suppliers as ps
    on p.part_key = ps.part_key
inner join
    suppliers as s
    on ps.supplier_key = s.supplier_key
order by
    p.part_key
