SELECT
    DISTINCT CONCAT(Date,country,category) primary_key
FROM 
    {{ source('dbt_test_marvin','sessions') }} 