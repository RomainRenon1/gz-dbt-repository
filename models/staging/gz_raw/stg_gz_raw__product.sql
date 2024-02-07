with 

source as (

    select * from {{ source('gz_raw', 'product') }}

),

renamed as (

    select
        products_id,
        CAST(purchse_price as FLOAT64) AS purchase_price

    from source

)

select * from renamed
