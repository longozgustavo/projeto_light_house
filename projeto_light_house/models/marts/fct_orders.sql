with customers as (
    select
        customer_sk
        , customer_id
    from {{ref('dim_customer')}}
)

, employees_territories as (
    select
        employee_sk
        , employee_id
    from {{ref('dim_employees_territories')}}
)

, order_details as (
    select
        order_sk
        , order_id
        , customer_id
        , product_id
        , employee_id
        , unit_price
        , quantity
    from {{ref('dim_order_details')}}
)

, products as (
    select
        product_sk
        , product_id
        , supplier_id
    from {{ref('dim_products')}}
)

, suppliers as (
    select
        supplier_sk
        , supplier_id
    from {{ref('dim_suppliers')}}
)

select 
    order_details.order_sk 
    ,customers.customer_sk 
    ,employees_territories.employee_sk 
    ,products.product_sk 
    ,suppliers.supplier_sk
from order_details
left join customers
on order_details.customer_id = customers.customer_id
left join products
on order_details.product_id = products.product_id
left join employees_territories
on order_details.employee_id = employees_territories.employee_id
left join suppliers
on suppliers.supplier_id = products.supplier_id

