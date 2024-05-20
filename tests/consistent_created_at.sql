SELECT r.review_date, l.created_at FROM 
{{ ref('fct_reviews') }} AS r
RIGHT JOIN
{{ ref('dim_listings_cleansed') }} AS l
WHERE r.review_date >= l.created_at