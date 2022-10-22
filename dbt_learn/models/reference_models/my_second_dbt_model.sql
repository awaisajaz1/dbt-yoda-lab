
-- Use the `ref` function to select from other models
{{ config(schema='stage', materialized='table') }}


select *
from {{ ref('my_first_dbt_model') }}
where help_keyword_id = 3
