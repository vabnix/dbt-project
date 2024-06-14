WITH src_hosts AS (
  SELECT * FROM {{ref("src_hosts")}}
)
SELECT
  host_id,
  NVL(host_name,'Anonymous') as host_name,
  CASE WHEN IS_SUPERHOST = 'f' THEN 'FALSE' ELSE 'TRUE' END as IS_SUPERHOST,
  CREATED_AT,
  UPDATED_AT
FROM 
  src_hosts