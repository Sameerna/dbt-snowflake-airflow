select * from dbt_db.dbt_schema.fact_orders
where date(order_date)> current_date()