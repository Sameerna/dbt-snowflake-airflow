select 
* 
from 
{{ref("fact_orders")}}
where 
item_discounted_amount > 0