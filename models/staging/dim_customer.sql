{{
    config(
        materialized = 'table',
        pre_hook="UPDATE {{ source('dbt', 'dim_customer') }} SET gender = 'other2' WHERE gender = 'other' OR gender = 'Other'"
    )
}}

SELECT
    *
FROM {{ source("dbt","dim_customer")}}