WITH airports AS (
    SELECT *
    FROM {{ ref('int_airports') }}
),

countries AS (
    SELECT
        iso_country,
        COUNT(*) AS airport_count
    FROM airports
    GROUP BY iso_country
)

SELECT 
    *
FROM
    countries