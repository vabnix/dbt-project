select *
from {{ ref("dim_listings_cleansed") }}
where price < 0
limit 10