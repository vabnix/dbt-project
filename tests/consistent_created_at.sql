SELECT * 
FROM {{ref("dim_listings_cleansed")}} lc
INNER JOIN {{ref("fct_reviews")}} fr
USING(listing_id)
WHERE lc.created_at >= fr.review_date