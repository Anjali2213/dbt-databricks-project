{{ config(
    materialized = 'table'
) }}


SELECT
    *
FROM {{ ref('dim_customer') }}
WHERE date_of_birth = '{{ var("process_date") }}'