{{
    config(
        materialized = 'table',
        pre_hook="UPDATE {{ this }} SET gender = 'other2' WHERE gender = 'Other'"
    )
}}

SELECT
    *
FROM {{ source("dbt","dim_customer")}}