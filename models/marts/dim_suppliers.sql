select
    supplier_key,
    supplier_name,
    supplier_address,
    supplier_nation_key,
    supplier_phone,
    supplier_account_balance,
    supplier_comment
from {{ ref('stg_tpch_sf1__suppliers') }}
