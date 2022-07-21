
with stg_employees as 
(
    select 
        employee_id as id	
        ,last_name	
        ,first_name			
        ,title			
        ,title_of_courtesy			
        ,birth_date			
        ,hire_date
    from {{ source('projeto_light_house','employees')}}
)

select * 
from stg_employees


