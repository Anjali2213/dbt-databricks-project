{{ config(
    materialized = 'table'
) }}


SELECT
    *
FROM {{ ref('customer') }}
WHERE date_of_birth = '{{ var("process_date") }}'