WITH raw_comments AS (
SELECT
    *
FROM
    {{ source('airstats', 'airport_comments') }}
)

SELECT
    id AS airport_id,
    thread_ref,
    airport_ref,
    airport_ident,
    date AS comment_date,
    member_nickname,
    subject AS comment_subject,
    body AS comment_body,
    loaded_at AS comment_loaded_at
FROM raw_comments