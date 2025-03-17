with source as (
    select * from {{ source('tpch_sf1', 'customer') }}
),

renamed as (
    select
        {{ adapter.quote("C_CUSTKEY") }} as customer_key,
        {{ adapter.quote("C_NAME") }} as customer_name,
        {{ adapter.quote("C_ADDRESS") }} as customer_address,
        {{ adapter.quote("C_NATIONKEY") }} as customer_nation_key,
        {{ adapter.quote("C_PHONE") }} as customer_phone,
        {{ adapter.quote("C_ACCTBAL") }} as customer_account_balance,
        {{ adapter.quote("C_MKTSEGMENT") }} as customer_market_segment,
        {{ adapter.quote("C_COMMENT") }} as customer_comment

    from source
)

select * from renamed
