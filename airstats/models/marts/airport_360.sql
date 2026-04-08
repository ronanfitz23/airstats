SELECT
    a.airport_ident,
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

from {{ ref('dim_airports') }} a

left join {{ ref('fct_airport_runways') }} r
    on a.airport_ident = r.airport_ident

left join {{ ref('fct_airport_comments') }} c
    on a.airport_ident = c.airport_ident