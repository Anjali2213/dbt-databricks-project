{{
    config(
        materialized = 'table',
        post_hook="UPDATE {{ this }} SET gender = 'other' WHERE gender = 'other2'"
    )
}}

SELECT
    *
FROM {{ source("dbt","dim_customer")}}