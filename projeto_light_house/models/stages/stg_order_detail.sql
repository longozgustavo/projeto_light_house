with stg_order_details as 
(
    select 
        order_id	
        ,product_id		
        ,unit_price		
        ,quantity		
        ,discount
    from {{ source('projeto_light_house','order_details')}}
)

select * 
from stg_order_details


