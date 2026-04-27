{{
    config(
        materialized = 'table',
        pre_hook="DELETE FROM {{ this }} WHERE gender = 'Other'"
    )
}}

SELECT
    *
FROM {{ source("dbt","dim_customer")}}