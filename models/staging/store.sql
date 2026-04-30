{{
    config(
        materialized = 'table'
    )
}}

SELECT
    *
FROM {{ source("dbt","dim_store")}}