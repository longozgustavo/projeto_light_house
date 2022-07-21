with stg_suppliers as 
(
    select 
        supplier_id			
        ,company_name		
        ,contact_name		
        ,contact_title		
        ,address as `supplier_address`	
        ,city		
        ,region
    from {{ source('projeto_light_house','suppliers')}}
)

select * 
from stg_suppliers