WITH lineitems AS (
  SELECT * FROM {{ ref('stg_tpch_sf1__lineitems') }}
)

SELECT
  part_key,
  sum(extended_price) AS total_sales,
  sum(quantity) AS total_quantity,
  sum(discount * extended_price) AS total_discount,
  sum(tax_rate * extended_price) AS total_tax

FROM lineitems
GROUP BY part_key
