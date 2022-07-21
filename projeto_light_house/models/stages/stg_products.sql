with stg_products as 
(
    select 
        product_id		
        ,product_name		
        ,supplier_id		
        ,category_id		
        ,quantity_per_unit		
        ,unit_price	
        ,units_in_stock
    from {{ source('projeto_light_house','products')}}
)

select * 
from stg_products
