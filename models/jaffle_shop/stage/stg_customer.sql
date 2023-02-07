{{ config(schema="stage", materialized="table") }}
with stg_customer as (
        select id as customer_id, first_name, last_name from raw.jaffle_shop.customers
    ),
