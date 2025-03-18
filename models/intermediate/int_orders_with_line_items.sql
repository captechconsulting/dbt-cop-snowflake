SELECT

  li.order_item_key,
  o.order_key,
  o.order_status AS order_status_code,
  o.order_date,
  li.part_key,
  li.supplier_key,
  li.return_flag,
  li.line_number,
  li.status_code AS order_item_status_code,
  li.ship_date,
  li.commit_date,
  li.receipt_date,
  li.ship_mode,
  li.extended_price,
  li.quantity,

  -- extended_price is actually the line item total,
  -- so we back out the extended price per item
  (li.extended_price / nullif(li.quantity, 0))::decimal(16, 2) AS base_price,
  li.discount_percentage,
  (base_price * (1 - li.discount_percentage))::decimal(16, 2)
    AS discounted_price,

  li.extended_price AS gross_item_sales_amount,
  (li.extended_price * (1 - li.discount_percentage))::decimal(16, 2)
    AS discounted_item_sales_amount,

    -- We model discounts as negative amounts
  (-1 * li.extended_price * li.discount_percentage)::decimal(16, 2)
    AS item_discount_amount,
  li.tax_rate,

  ((gross_item_sales_amount + item_discount_amount) * li.tax_rate)::decimal(
    16, 2
  ) AS item_tax_amount,

  (
    gross_item_sales_amount
    + item_discount_amount
    + item_tax_amount
  )::decimal(16, 2) AS net_item_sales_amount

FROM

  {{ ref('stg_tpch_sf1__orders') }} AS o

LEFT JOIN {{ ref('stg_tpch_sf1__lineitems') }} AS li
  ON o.order_key = li.order_key
