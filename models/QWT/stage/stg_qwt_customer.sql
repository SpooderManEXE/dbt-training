{{config (alias = 'stg_customers',schema = 'STAGING',database='QWT_ANALYTICS',materialized ='table')}}
select 
CUSTID as cust_id, 
COMPANYNAME,
CONTACTNAME,	
CITY,
COUNTRY,
DIVID,
ADDRESS,
FAX,
PHONE,
POSTALCODE,
STATEPRO
from QWT_RAW.QWT.CUSTOMER
