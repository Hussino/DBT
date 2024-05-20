WITH raw_hosts AS (
    SELECT * FROM {{source('airbnb', 'hosts')}}
)
SELECT
    created_at,
    updated_at,
    is_superhost,
    id AS host_id,
    name AS host_name
FROM
    raw_hosts