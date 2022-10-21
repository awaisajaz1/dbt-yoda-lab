-- {{ config(schema='test', materialized='table') }}
-- select * from testkaykroo.role



{{ config(schema='tester', materialized='table') }}

select s.* from {{source('testkaykroo', 'role')}} as r
left join {{source('testkaykroo', 'user_role_map')}} as s on r.role_id = s.role_id