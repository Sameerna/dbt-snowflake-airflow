select 
* 
from 
dbt_db.dbt_schema.fact_orders
where 
item_discounted_amount > 0