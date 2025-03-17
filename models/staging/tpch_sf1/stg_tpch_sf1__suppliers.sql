with source as (
    select * from {{ source('tpch_sf1', 'supplier') }}
),

renamed as (
    select
        {{ adapter.quote("S_SUPPKEY") }} as supplier_key,
        {{ adapter.quote("S_NAME") }} as supplier_name,
        {{ adapter.quote("S_ADDRESS") }} as supplier_address,
        {{ adapter.quote("S_NATIONKEY") }} as supplier_nation_key,
        {{ adapter.quote("S_PHONE") }} as supplier_phone,
        {{ adapter.quote("S_ACCTBAL") }} as supplier_account_balance,
        {{ adapter.quote("S_COMMENT") }} as supplier_comment

    from source
)

select * from renamed
