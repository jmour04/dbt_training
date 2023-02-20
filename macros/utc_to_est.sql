{% macro utc_to_est(column_name) -%}
convert_timezone('UTC', 'America/Chicago', {{ column_name }})
{%- endmacro %}