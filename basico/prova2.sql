use sakila;
-- 1
#insert into language
#values(
#default, 'Talian', '2025-05-12 15:14:58'
#)
-- 2
#select
#     customer.first_name,
#     city.city
#from customer
#join address
 
 #        on customer.address_id =  address.address_id
#join city
#		on address.city_id = city.city_id
 #       where city.city = 'London';
 
-- 3
#select
#   customer.first_name,
#   rental.rental_date
#from customer
#join rental
 #         on customer.customer_id = rental.customer_id
  #        order by rental.rental_date desc;
          
-- 4
#insert into language(
#language_id,
#name,
#last_update
#)
#values(
#default, 'Corean', '2006-05-12 15:14:58'
#)
-- 5
#select
#     customer.first_name,
#	address.address,
#     city.city
#from customer
#join address
# 
#         on customer.address_id =  address.address_id
#join city
#		on address.city_id = city.city_id;

#6
select
    customer.first_name,
     city.city,
     rental.rental_date
from customer
join address
         on customer.address_id =  address.address_id
join rental
         on customer.customer_id = rental.customer_id
join city
		on address.city_id = city.city_id
where city.city= 'London'     
 order by rental.rental_date desc;

   

        