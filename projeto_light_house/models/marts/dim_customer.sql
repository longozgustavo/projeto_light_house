with stages as (
    select *
    from {{ref('stg_customers')}}
)
    
, dim_customer as (
    select
        row_number() over (order by customer_id) as customer_sk 
        , customer_id 
        , country
        , city
        , fax
        , postal_code   
        , customer_address
        , region
        , contact_name
        , phone
        , company_name
        , contact_title
    from stages
)

select *
from dim_customer