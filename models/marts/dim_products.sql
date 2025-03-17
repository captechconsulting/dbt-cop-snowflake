select
    part_key,
    part_name,
    part_mfgr,
    part_brand,
    part_type,
    part_size,
    part_container,
    part_retail_price,
    part_comment
from {{ ref('stg_tpch_sf1__parts') }}
