WITH source AS (
    SELECT
        *
    FROM {{source('olist_raw', 'orders')}}
),

renamed AS (
    SELECT
        order_id,
        customer_id,
        order_status,
        cast(order_purchase_timestamp as timestamp) AS order_at,
        cast(order_delivered_customer_date as timestamp) AS delivered_at,
        cast(order_estimated_delivery_date as timestamp) AS estimated_delivery_at
    FROM source
)

SELECT
    *
FROM remamed