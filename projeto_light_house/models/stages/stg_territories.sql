with stg_territories as 
(
    select 
        territory_id	
        ,territory_description	
        ,region_id
    from {{ source('projeto_light_house','territories')}}
)

select * 
from stg_territories