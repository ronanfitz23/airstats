WITH int_aiports AS (
    SELECT
        *
    FROM
        {{ ref('stg_airports') }}
)

SELECT
    airport_id,
    airport_ident,
    airport_type,
    airport_name,
    airport_lat,
    airport_long,
    airport_elevation_ft,
    continent,
    iso_country,
    iso_region,
    municipality,
    scheduled_service
FROM
    int_aiports