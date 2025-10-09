SELECT
  *
FROM {{ ref('dim_listings_cleansed') }} l
INNER JOIN {{ ref('fct_reviews') }} r
  USING (listing_id)
WHERE l.created_at >= r.review_date

/*
select
    r.listing_id, r.review_date, l.created_at
from {{ ref('fct_reviews')}} as r
left join {{ ref('dim_listings_cleansed')}} as l
    on r.listing_id = l.listing_id
    and r.review_date <= l.created_at
limit 10
*/
