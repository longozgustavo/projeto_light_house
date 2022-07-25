with suppliers as (
    select *		
    from {{ ref('stg_suppliers') }}
),

dim_suppliers as 
(
    select 
        row_number() over (order by supplier_id) as supplier_sk
        ,supplier_id 
        ,company_name		
        ,contact_name		
        ,contact_title		
        ,supplier_address	
        ,city		
        ,region
    from suppliers
)

select * 
from dim_suppliers