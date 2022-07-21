with stg_employees as (
    select *
    from {{ref('stg_customers')}}
)

with stg_employee_territories as (
    select *
    from{{ref('stg_employee_territories')}}
)

with stg_territories as (
    select *
    from{{ref('stg_territories')}}
)

with stg_region as (
    select *
    from {{ref('stg_region')}}
)

,joining as (
    select
    row_number() over (order by employee_id) as employee_sk 
    ,stg_employees.employee_id
    from stg_employees
)

 git config --global user.email "you@example.com"
  git config --global user.name "Your Name"