SELECT b.ORDER_ID
       ,b.customer_id
       ,a.amount/100 as amount
FROM "RAW"."STRIPE"."PAYMENT" as a
inner JOIN "TEST"."DBT_HBHIKHA"."STG_ORDERS" as b
    on a.ORDERID = b.ORDER_ID
WHERE a.status = 'success'