with source as (
    select * from {{ source('tpch_sf1', 'partsupp') }}
),

renamed as (
    select
        {{ adapter.quote("PS_PARTKEY") }} as part_key,
        {{ adapter.quote("PS_SUPPKEY") }} as supplier_key,
        {{ adapter.quote("PS_AVAILQTY") }} as available_quantity,
        {{ adapter.quote("PS_SUPPLYCOST") }} as supply_cost,
        {{ adapter.quote("PS_COMMENT") }} as part_supply_comment

    from source
)

select * from renamed
