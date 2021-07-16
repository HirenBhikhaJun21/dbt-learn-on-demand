SELECT 
    order_id,
    sum(amount) as total_amount
from {{ref('stg_order_pmt')}}
group by 1
having not(total_amount) >= 0