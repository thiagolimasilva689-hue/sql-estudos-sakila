# as ele dar um nome simpleas para nossas tabelas
select 
   cus.customer_id,
   cus.first_name,
   cus.last_name ,
   pay.rental_id,
   pay.amount
   from customer cus
join payment pay  on cus.customer_id = pay.payment_id;