{% macro generate_schema_name(custom_schema_name, node) -%}

    {%- set default_schema = target.schema -%}
    {%- if custom_schema_name is none -%}

        {{ default_schema }}

    {%- else -%}
        
        {{ custom_schema_name | trim }}

    {%- endif -%}

{%- endmacro %}

-- {{ default_schema }}_{{ custom_schema_name | trim }} we have comment the default setting now schema will be by our choice