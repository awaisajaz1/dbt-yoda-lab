-- {{ config(schema='test', materialized='table') }}


{{ config(schema='dbt_staging', materialized='table') }}

select s.* from {{source('mysql', 'help_topic')}} as r
left join 
{{source('mysql', 'help_category')}} as s on r.help_category_id = s.help_category_id
where s.help_category_id = 3