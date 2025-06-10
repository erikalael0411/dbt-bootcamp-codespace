WITH raw_hosts AS (
    SELECT 
    *
    FROM AIRBNB.RAW.raw_hosts
)
SELECT 
    ID AS host_id, 
    NAME as host_name, 
    IS_SUPERHOST, 
    CREATED_AT, 
    UPDATED_AT
    FROM raw_hosts