with orders as (
    select *
    from {{ref('stg_order')}}
)

,order_details as (
    select *
    from {{ref('stg_order_detail')}}
)

,joining as (
    select
        row_number() over (order by orders.order_id) as order_sk 
        ,orders.order_id		
        ,orders.customer_id	
        ,orders.employee_id		
        ,orders.order_date		
        ,orders.required_date		
        ,orders.shipped_date		
        ,orders.ship_via        	
        ,order_details.product_id		
        ,order_details.unit_price		
        ,order_details.quantity		
        ,order_details.discount
    from orders
    left join order_details
    on orders.order_id = order_details.order_id
)

select * 
from joining
