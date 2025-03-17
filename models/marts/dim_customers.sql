select
    customer_key,
    customer_name,
    customer_address,
    customer_nation_key,
    customer_phone,
    customer_account_balance,
    customer_market_segment,
    customer_comment
from {{ ref('stg_tpch_sf1__customers') }}
