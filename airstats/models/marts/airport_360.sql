SELECT
    a.airport_ident,
    a.airport_id,
    a.airport_name,
    a.iso_country,
    a.iso_region,
    a.municipality,
    a.scheduled_service,

    -- runway metrics
    r.runway_count,
    r.max_runway_length_ft,
    r.avg_runway_length_ft,
    r.has_lighted_runway,

    -- comment metrics
    c.comment_count,
    c.last_comment_date

FROM {{ ref('dim_airports') }} a

LEFT JOIN {{ ref('fct_airport_runways') }} r
    ON a.airport_id = r.airport_id

LEFT JOIN {{ ref('fct_airport_comments') }} c
    ON a.airport_id = c.airport_id