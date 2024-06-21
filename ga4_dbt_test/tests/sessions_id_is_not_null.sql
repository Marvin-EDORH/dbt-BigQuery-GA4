SELECT 
    * 
FROM 
    {{ ref('sessions_category') }} 
WHERE session_id IS NULL