{{
    config(
        materialized = 'table',
        pre_hook="UPDATE {{ this }} SET gender = 'other2' WHERE gender = 'other'"
    )
}}

SELECT
    *
FROM {{ source("dbt","dim_customer")}}