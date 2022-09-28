WITH src_green_tripdata_january AS (
    SELECT
        *
    FROM
        {{ ref('src_green_tripdata_january') }}
)
SELECT
    vendor_id,
    pickup_datetime,
    dropoff_datetime,
    payment_type, 
    SUM(passenger_count) as num_of_passenger,
FROM
    src_green_tripdata_january
GROUP BY
    vendor_id, pickup_datetime, dropoff_datetime, payment_type