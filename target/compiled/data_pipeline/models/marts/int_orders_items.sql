select 
lineitems.order_item_key,
lineitems.part_key,
lineitems.line_number,
lineitems.extended_price,
orders.order_key,
orders.customer_key,
orders.order_date,

    (-1 * lineitems.extended_price * lineitems.discount_percentage)::decimal(16, 2)
 as item_discounted
from
    dbt_db.dbt_schema.stg_tpch_orders as orders
join 
    dbt_db.dbt_schema.stg_tpch_line_items as lineitems
on orders.order_key = lineitems.order_key
order by 
    orders.order_date