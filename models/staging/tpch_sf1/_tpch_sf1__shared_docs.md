This file serves as a documentation repository. Using this structure allows for re-use of defined descriptions in multiple places. It also encourages DRY code (don't repeat yourself) principles.

{% docs customer_key %}
Primary key for customers. This is a unique identifier for each customer.
{% enddocs %}

{% docs customer_name %}
Customer name. This is the name of the customer. (variable text, size 25)
{% enddocs %}

{% docs customer_address %}
Customer address. This is the address of the customer. (variable text, size 40)
{% enddocs %}

{% docs customer_nation_key %}
Primary key for nation. This is a reference to the nation the customer belongs to. (Foreign Key to N_NATIONKEY)
{% enddocs %}

{% docs customer_phone %}
Customer phone number. This is the phone number of the customer. (fixed text, size 15)
{% enddocs %}

{% docs customer_account_balance %}
Account balance. This is the account balance of the customer. (Decimal)
{% enddocs %}

{% docs customer_market_segment %}
Market segment. This is the market segment the customer belongs to. (fixed text, size 10)
{% enddocs %}

{% docs customer_comment %}
Comments about the customer. Additional comments or notes about the customer. (variable text, size 117)
{% enddocs %}

{% docs order_key %}
Primary key for orders. This is a unique identifier for each order. (Identifier)
{% enddocs %}

{% docs order_status %}
Order status. This indicates the current status of the order. (fixed text, size 1)
{% enddocs %}

{% docs total_price %}
Total price of the order. This is the total price of the order. (Decimal)
{% enddocs %}

{% docs order_date %}
Date the order was placed. This is the date when the order was placed. (Date)
{% enddocs %}

{% docs order_priority %}
Priority of the order. This indicates the priority level of the order. (fixed text, size 15)
{% enddocs %}

{% docs clerk %}
Clerk who processed the order. This is the clerk who processed the order. (fixed text, size 15)
{% enddocs %}

{% docs ship_priority %}
Shipping priority. This indicates the shipping priority of the order. (Integer)
{% enddocs %}

{% docs order_comment %}
Comments about the order. Additional comments or notes about the order. (variable text, size 79)
{% enddocs %}

{% docs part_key %}
Primary key for part. This is a unique identifier for each part. (Identifier)
{% enddocs %}

{% docs part_name %}
Part name. This is the name of the part. (variable text, size 55)
{% enddocs %}

{% docs part_mfgr %}
Manufacturer. This is the manufacturer of the part. (fixed text, size 25)
{% enddocs %}

{% docs part_brand %}
Brand. This is the brand of the part. (fixed text, size 10)
{% enddocs %}

{% docs part_type %}
Type. This is the type of the part. (variable text, size 25)
{% enddocs %}

{% docs part_size %}
Size. This is the size of the part. (integer)
{% enddocs %}

{% docs part_container %}
Container. This is the container of the part. (fixed text, size 10)
{% enddocs %}

{% docs part_retail_price %}
Retail price. This is the retail price of the part. (Decimal)
{% enddocs %}

{% docs part_comment %}
Comments about the part. Additional comments or notes about the part. (variable text, size 23)
{% enddocs %}

{% docs supplier_key %}
Primary key for supplier. This is a unique identifier for each supplier. (Identifier)
{% enddocs %}

{% docs supplier_name %}
Supplier name. This is the name of the supplier. (fixed text, size 25)
{% enddocs %}

{% docs supplier_address %}
Supplier address. This is the address of the supplier. (variable text, size 40)
{% enddocs %}

{% docs supplier_nation_key %}
Foreign key referencing nation. This is a reference to the nation the supplier belongs to. (Foreign Key to N_NATIONKEY)
{% enddocs %}

{% docs supplier_phone %}
Supplier phone number. This is the phone number of the supplier. (fixed text, size 15)
{% enddocs %}

{% docs supplier_account_balance %}
Account balance. This is the account balance of the supplier. (Decimal)
{% enddocs %}

{% docs supplier_comment %}
Comments about the supplier. Additional comments or notes about the supplier. (variable text, size 101)
{% enddocs %}

{% docs available_quantity %}
Available quantity. This is the available quantity of the part. (integer)
{% enddocs %}

{% docs supply_cost %}
Supply cost. This is the supply cost of the part. (Decimal)
{% enddocs %}

{% docs part_supply_comment %}
Comments about the part supplier. Additional comments or notes about the part supplier. (variable text, size 199)
{% enddocs %}

{% docs nation_key %}
Primary key for nation. This is a unique identifier for each nation.
{% enddocs %}

{% docs nation_name %}
Nation name. This is the name of the nation. (fixed text, size 25)
{% enddocs %}

{% docs nation_region_key %}
Foreign key referencing region. This is a reference to the region the nation belongs to. (Foreign Key to R_REGIONKEY)
{% enddocs %}

{% docs nation_comment %}
Comments about the nation. Additional comments or notes about the nation. (variable text, size 152)
{% enddocs %}

{% docs region_key %}
Primary key for region. This is a unique identifier for each region.
{% enddocs %}

{% docs region_name %}
Region name. This is the name of the region. (fixed text, size 25)
{% enddocs %}

{% docs region_comment %}
Comments about the region. Additional comments or notes about the region. (variable text, size 152)
{% enddocs %}
