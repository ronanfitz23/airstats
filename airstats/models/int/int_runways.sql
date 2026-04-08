WITH stg_runways AS (
    SELECT
        *
    FROM
        {{ ref('stg_runways') }}
)

SELECT
    runway_id,
    airport_ref,
    airport_ident,
    runway_length_ft,
    runway_width_ft,
    runway_surface,
    CASE 
        WHEN runway_lighted = 1 THEN true
        ELSE false
    END AS runway_lighted,
    CASE
        WHEN runway_closed = 1 THEN True
        ELSE False
    END AS runway_closed
FROM stg_runways