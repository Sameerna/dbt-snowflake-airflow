
  
    

        create or replace transient table dbt_db.dbt_schema.int_order_items_summary
         as
        (select
order_key,
sum(extended_price) as gross_item_sales_amount,
sum(item_discounted) as item_discounted_amount
from dbt_db.dbt_schema.int_orders_items
group by order_key
        );
      
  