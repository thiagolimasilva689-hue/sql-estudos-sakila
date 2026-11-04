select 
   customer.customer_id,
   customer.first_name,
   customer.last_name ,
   payment.rental_id,
   payment.amount
   from customer
join payment on customer.customer_id = payment.payment_id;