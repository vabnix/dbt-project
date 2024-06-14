{{
  config(
    materialized = 'incremental',
    on_schema_change = 'fail'
    )
}}
WITH src_review AS (
    SELECT * FROM {{ref("src_reviews")}}
)
SELECT * FROM src_review
WHERE review_text IS NOT NULL
{% if is_incremental() %}
  and review_date >= (select max(review_date) from {{this}})
{% endif %}