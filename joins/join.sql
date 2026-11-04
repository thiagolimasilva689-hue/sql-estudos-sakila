use sakila;
#Inner join
select * from customer 
join payment on customer.customer_id  = payment.payment_id;