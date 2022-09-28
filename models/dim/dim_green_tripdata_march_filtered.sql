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
    store_and_fwd_flag,
    ratecode_id,
    pu_location_id,
    do_location_id,
    passenger_count,
    trip_distance,
    payment_type,	
    trip_type
FROM
    src_green_tripdata_march
WHERE 
    trip_distance > 0