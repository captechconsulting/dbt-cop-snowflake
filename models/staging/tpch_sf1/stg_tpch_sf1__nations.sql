with source as (
    select * from {{ source('tpch_sf1', 'nation') }}
),

renamed as (
    select
        {{ adapter.quote("N_NATIONKEY") }} as nation_key,
        {{ adapter.quote("N_NAME") }} as nation_name,
        {{ adapter.quote("N_REGIONKEY") }} as nation_region_key,
        {{ adapter.quote("N_COMMENT") }} as nation_comment

    from source
)

select * from renamed
