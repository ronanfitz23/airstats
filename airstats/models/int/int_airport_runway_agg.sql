SELECT
    airport_ident,
    airport_ref,

    COUNT(*) AS runway_count,
    MAX(runway_length_ft) AS max_runway_length_ft,

    MAX(CASE WHEN runway_lighted THEN True ELSE False END) AS has_lighted_runway

FROM {{ ref('int_runways') }}
GROUP BY airport_ident, airport_ref