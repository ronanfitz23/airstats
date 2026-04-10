WITH comments_agg AS (
    SELECT
        airport_id,
        COUNT(*) AS comment_count,
        MAX(comment_date) AS last_comment_date
    FROM {{ ref('stg_airport_comments') }}
    GROUP BY airport_id
)

SELECT 
    *
FROM
    comments_agg