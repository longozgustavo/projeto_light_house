with stg_shippers as 
(
    select 
        shipper_id		
        ,company_name	
        ,phone
    from {{ source('projeto_light_house','shippers')}}
)

select * 
from stg_shippers
