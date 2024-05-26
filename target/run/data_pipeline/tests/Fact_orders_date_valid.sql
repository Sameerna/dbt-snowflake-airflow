select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      select * from dbt_db.dbt_schema.fact_orders
where date(order_date)> current_date()
      
    ) dbt_internal_test