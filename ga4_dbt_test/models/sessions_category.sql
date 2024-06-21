SELECT
    PARSE_DATE("%Y%m%d", event_date) Date, #convertit STRING en DATE,
    CONCAT(user_pseudo_id, (SELECT value.int_value FROM UNNEST(event_params) WHERE key = "ga_session_id")) AS session_id, 
    device.category,
  	geo.country, 
FROM 
    {{ source('ga4_obfuscated_sample_ecommerce','events_*') }} 
WHERE _TABLE_SUFFIX BETWEEN '20210130' AND '20210330' 
