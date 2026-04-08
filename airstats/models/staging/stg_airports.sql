WITH raw_airports AS (
    SELECT
        *
    FROM
        {{ source('airstats', 'airports') }}
)

SELECT
    id AS airport_id,
    ident AS airport_ident,
    type AS airport_type,
    name AS airport_name,
    latitude_deg AS airport_lat,
    longitude_deg AS airport_long,
    elevation_ft AS airport_elevation_ft,
    continent,
    iso_country,
    iso_region,
    municipality,
    scheduled_service
FROM
    raw_airports