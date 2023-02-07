{{config (schema = 'stage',materialized ='table')}}
with stg_order as (
select
    id as order_id,
    user_id as customer_id,
    order_date,
    status

from raw.jaffle_shop.orders
),