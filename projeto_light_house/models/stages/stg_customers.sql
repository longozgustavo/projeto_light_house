
with stg_customers as 
(
    select 
       customer_id		
        ,company_name		
        ,contact_name		
        ,contact_title		
        ,address as `customer_address`
        ,city		
        ,region		
        ,postal_code		
        ,country		
        ,phone		
        ,fax
    from {{ source('projeto_light_house','customers')}}
)

select * 
from stg_customers