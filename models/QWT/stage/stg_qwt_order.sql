{{config (alias = 'stg_orders',schema = 'STAGING',database='QWT_ANALYTICS',materialized ='table')}}

select
    OrderID as order_id,
    OrderDate as order_date,
    CustomerID as cust_id,
    EmployeeID as emp_id,
    ShipperID as ship_id,
    Freight as freight
from QWT_RAW.QWT.ORDERS
