{{
    config(
        materialized = 'table',
        schema = 'bronze'
    )
}}

SELECT
    *
FROM {{ source("dbt","dim_customer")}}