SELECT
    PARSE_DATE("%Y%m%d", event_date) Date, #convertit STRING en DATE,
    device.category,
  	geo.country, 
    CONCAT(user_pseudo_id, (SELECT value.int_value FROM UNNEST(event_params) WHERE key = "ga_session_id")) AS session_id, 
FROM 
    {{ source('ga4_obfuscated_sample_ecommerce','events_*') }} 
WHERE _TABLE_SUFFIX BETWEEN '20161201' AND '20161231' 