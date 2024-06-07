SELECT
    DISTINCT session_id
FROM 
    {{ ref('sessions_category') }}