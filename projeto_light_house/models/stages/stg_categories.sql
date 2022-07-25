with stg_categories as 
(
    select 
        category_id
        ,category_name 		
        ,description	as `category_description`		
        ,picture
    from {{ source('projeto_light_house','categories')}}
)

select * 
from stg_categories