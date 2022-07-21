with stg_us_states as 
(
    select 
        state_id			
        ,state_name			
        ,state_abbr		
        ,state_region
    from {{ source('projeto_light_house','us_states')}}
)

select * 
from stg_us_states