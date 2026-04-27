{{
    config(
        materialized = 'table',
        post_hook="DELETE FROM {{ this }} WHERE gender = 'other'"
    )
}}

SELECT
    *
FROM {{ source("dbt","dim_customer")}}