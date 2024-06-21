SELECT
     CONCAT(Date,country,category) primary_key,
    Date,
    country,
    category,
    COUNT(DISTINCT session_id) sessions
FROM 
    {{ ref('sessions_category') }}
GROUP BY 1, 2, 3, 4