with source as (
    select * from {{ source('tpch_sf1', 'lineitem') }}
),

renamed as (
    select
        {{ dbt_utils.generate_surrogate_key(['L_ORDERKEY', 'L_LINENUMBER']) }}
            as order_item_key,
        {{ adapter.quote("L_ORDERKEY") }} as order_key,
        {{ adapter.quote("L_PARTKEY") }} as part_key,
        {{ adapter.quote("L_SUPPKEY") }} as supplier_key,
        {{ adapter.quote("L_LINESTATUS") }} as status_code,
        {{ adapter.quote("L_DISCOUNT") }} as discount_percentage,
        {{ adapter.quote("L_LINENUMBER") }} as line_number,
        {{ adapter.quote("L_QUANTITY") }} as quantity,
        {{ adapter.quote("L_EXTENDEDPRICE") }} as extended_price,
        {{ adapter.quote("L_DISCOUNT") }} as discount,
        {{ adapter.quote("L_TAX") }} as tax_rate,
        {{ adapter.quote("L_RETURNFLAG") }} as return_flag,
        {{ adapter.quote("L_LINESTATUS") }} as line_status,
        {{ adapter.quote("L_SHIPDATE") }} as ship_date,
        {{ adapter.quote("L_COMMITDATE") }} as commit_date,
        {{ adapter.quote("L_RECEIPTDATE") }} as receipt_date,
        {{ adapter.quote("L_SHIPINSTRUCT") }} as ship_instructions,
        {{ adapter.quote("L_SHIPMODE") }} as ship_mode,
        {{ adapter.quote("L_COMMENT") }} as line_comment

    from source
)

select * from renamed
