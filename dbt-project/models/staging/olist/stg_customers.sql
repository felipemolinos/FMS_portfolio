WITH source as (
    SELECT 
        * 
    FROM {{source('olist_raw', 'customers')}}
),

renamed as (
    SELECT
        customer_id,
        customer_unique_id,
        customer_city,
        customer_state
    FROM source
)

SELECT 
    * 
FROM renamed