WITH cte_listings AS (
   SELECT * FROM {{ref("dim_listings_cleansed")}}
),
cte_hosts AS (
    SELECT * FROM {{ref("dim_hosts_cleansed")}}
)
SELECT cte_listings.listing_id,
        cte_listings.listing_name,
        cte_listings.room_type,
        cte_listings.minimum_nights,
        cte_listings.price,
        cte_listings.host_id,
        cte_hosts.host_name,
        cte_hosts.is_superhost,
        cte_listings.created_at,
        GREATEST(cte_listings.updated_at,cte_hosts.updated_at) as updated_at
FROM cte_listings
LEFT JOIN cte_hosts on (cte_hosts.host_id = cte_listings.host_id)