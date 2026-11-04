select * from customer
where customer_id in

(  select customer_id 
    from payment
    group by customer_id
    having count(*) > 37)
#HAVING É BASICAMENTE WHERE DO group by 