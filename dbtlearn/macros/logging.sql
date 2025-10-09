{% macro learn_logging() %}
  {{ log('call your mum', info=True)}} 
{% endmacro %}

-- info=True: makes the log show on screen 
-- (default: info=debug only appends it to logs\dbt.log file)
