{% {% macro learn_macro() %}
    {% set name = vaibhav %}
    {{ log("Hello" ~ name, info=True) }}
    {{ log("Hello dbt user " ~var("user_name", ' NO DBT USER FOUND')~"!", info=True) }}
{% endmacro %}%}