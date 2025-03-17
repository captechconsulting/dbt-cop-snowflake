with source as (
    select * from {{ source('tpch_sf1', 'part') }}
),

renamed as (
    select
        {{ adapter.quote("P_PARTKEY") }} as part_key,
        {{ adapter.quote("P_NAME") }} as part_name,
        {{ adapter.quote("P_MFGR") }} as part_mfgr,
        {{ adapter.quote("P_BRAND") }} as part_brand,
        {{ adapter.quote("P_TYPE") }} as part_type,
        {{ adapter.quote("P_SIZE") }} as part_size,
        {{ adapter.quote("P_CONTAINER") }} as part_container,
        {{ adapter.quote("P_RETAILPRICE") }} as part_retail_price,
        {{ adapter.quote("P_COMMENT") }} as part_comment

    from source
)

select * from renamed
