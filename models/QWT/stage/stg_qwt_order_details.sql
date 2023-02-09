{{config (alias = 'stg_order_details',schema = 'STAGING',database='QWT_ANALYTICS',
materialized ='incremental',unique_key=['OrderID','LineNo'])}}


select * from QWT_RAW.QWT.CUSTOMER
{% if is_incremental() %}
  -- this filter will only be applied on an incremental run
  where log_date > (select max(log_date) from {{ this }})

{% endif %}