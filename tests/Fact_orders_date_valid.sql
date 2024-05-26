select * from {{ref("fact_orders")}}
where date(order_date)> current_date()