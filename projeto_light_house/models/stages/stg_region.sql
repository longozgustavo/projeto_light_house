with stg_region as 
(
    select 
        region_id	
        ,region_description
    from {{ source('projeto_light_house','region')}}
)

select * 
from stg_region
