WITH airports AS (
    SELECT *
    FROM {{ ref('int_airports') }}
),

regions AS (
    SELECT
        iso_country,
        iso_region,
        COUNT(*) AS airport_count
    FROM airports
    GROUP BY iso_country, iso_region
)

SELECT 
    *
FROM 
    regions