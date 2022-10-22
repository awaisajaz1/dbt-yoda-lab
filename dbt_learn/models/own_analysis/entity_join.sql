-- {{ config(schema='test', materialized='table') }}


{{ config(schema='dbt_staging', materialized='table') }}

select s.* from {{source('mysql', 'help_category')}} as r
left join 
{{source('mysql', 'help_relation')}} as s on r.help_keyword_id = s.help_keyword_id