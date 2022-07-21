with stg_orders as 
(
    select 
        order_id		
        ,customer_id	
        ,employee_id		
        ,order_date		
        ,required_date		
        ,shipped_date		
        ,ship_via
    from {{ source('projeto_light_house','orders')}}
)

select * 
from stg_orders
