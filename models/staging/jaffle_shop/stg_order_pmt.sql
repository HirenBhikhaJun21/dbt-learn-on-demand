SELECT b.ORDER_ID
       ,b.customer_id
       ,a.amount/100 as amount   
FROM {{ source('stripe', 'payment') }} as a
inner JOIN  {{ ref('stg_orders') }}  as b
    on a.ORDERID = b.ORDER_ID
WHERE a.status = 'success'