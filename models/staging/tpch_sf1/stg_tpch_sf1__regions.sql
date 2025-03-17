with source as (
    select * from {{ source('tpch_sf1', 'region') }}
),

renamed as (
    select
        {{ adapter.quote("R_REGIONKEY") }} as region_key,
        {{ adapter.quote("R_NAME") }} as region_name,
        {{ adapter.quote("R_COMMENT") }} as region_comment

    from source
)

select * from renamed
