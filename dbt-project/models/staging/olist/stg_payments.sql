WITH source AS (
    SELECT 
        * 
    FROM {{source('olist_raw', 'order_payments')}}
),

renamed AS (
    SELECT
        order_id,
        payment_type,
        payment_installments,
        cast(payment_value AS numeric) AS payment_value
    FROM source
)

SELECT 
    * 
FROM renamed