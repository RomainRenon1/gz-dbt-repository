
SELECT *
,(quantity)*(purchase_price) AS purchase_cost
,(revenue-(quantity*purchase_price)) AS margin 
FROM {{ref('stg_gz_raw__sales')}}
JOIN {{ref('stg_gz_raw__product')}}
USING(products_id)
