WITH
r AS (
SELECT
*
FROM
{{ ref('fct_reviews') }}
),
l AS (
SELECT *
FROM {{ ref('dim_listings_cleansed') }}
)
SELECT
r.listing_id, l.created_at
FROM r
LEFT JOIN l on r.listing_id = l.listing_id
WHERE r.review_date < l.CREATED_AT