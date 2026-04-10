WITH stg_runways AS (
    SELECT
        *
    FROM
        {{ ref('stg_runways') }}
)

SELECT
    runway_id,
    airport_id,
    airport_ident,
    runway_length_ft,
    runway_width_ft,
    runway_surface,
    CASE 
        WHEN runway_lighted = 1 THEN True
        WHEN runway_lighted = 0 THEN False
        ELSE NULL
    END AS runway_lighted,
    CASE
        WHEN runway_closed = 1 THEN True
        WHEN runway_closed = 0 THEN False
        ELSE NULL
    END AS runway_closed
FROM stg_runways