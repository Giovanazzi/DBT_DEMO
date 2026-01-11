-- Active: 1743528247845@@127.0.0.1@3306
with source as (
    select * from {{ source('my_dbt_db', 'raw_orders') }}
),
renamed as (
    select
        id as order_id,
        customer as customer_id,
        ordered_at,
        store_id
        
    from source
)
select * from renamed