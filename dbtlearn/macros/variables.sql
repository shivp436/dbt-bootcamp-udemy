{% macro learn_variables() %}
  {% set your_name_jinja = 'Shivanand' %}
  {{ log('Hello jinja user ' ~ your_name_jinja, info=True) }}

  {{ log('Hello dbt user ' ~ var("user_name", "No user_name set") ~ "!", info=True)}}
  -- dbt run-operation learn_variables --vars "{user _name: Shivanand P}"
  -- can also declare a default value in dbt_project.yml under vars
  {{ log('Hello dbt user ' ~ var("user_name") ~ "!", info=True)}}
  -- default value from dbt_project.yml overrides the default value set during use
{% endmacro %}
