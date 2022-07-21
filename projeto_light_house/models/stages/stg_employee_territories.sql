
with stg_employee_territories as 
(
    select 
        employee_id
        ,territory_id
    from {{ source('projeto_light_house','employee_territories')}}
)

select * 
from stg_employee_territories