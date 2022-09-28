WITH src_green_tripdata_march AS (
    SELECT
        *
    FROM
        {{ ref('src_green_tripdata_march') }}
)
SELECT
    vendor_id,
    pickup_datetime,
    dropoff_datetime,
    payment_type, 
    SUM(passenger_count) as num_of_passenger,
FROM
    src_green_tripdata_march
GROUP BY
    vendor_id, pickup_datetime, dropoff_datetime, payment_type