with employees as (
    select *
    from {{ref('stg_employees')}}
),

 employee_territories as (
    select *
    from{{ref('stg_employee_territories')}}
),

 territories as (
    select *
    from{{ref('stg_territories')}}
),
 region as (
    select *
    from {{ref('stg_region')}}
)

,joining as (
    select
    row_number() over (order by employees.employee_id) as employee_sk 
    ,employees.employee_id
    ,employees.last_name	
    ,employees.first_name			
    ,employees.title			
    ,employees.title_of_courtesy			
    ,territories.territory_description	
    ,region.region_description
    ,employees.birth_date			
    ,employees.hire_date
    from employees
    left join employee_territories
    on employees.employee_id = employee_territories.employee_id
    left join territories
    on employee_territories.territory_id = territories.territory_id
    left join region
    on territories.region_id = region.region_id
)

select * 
from joining

