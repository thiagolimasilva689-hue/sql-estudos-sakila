use sakila;
#1
#select
#     customer.first_name,
#     customer.email
#from customer;
     
#2
#select
#     customer.first_name,
#     address.address
#from customer
#join address
#         on customer.address_id = address.address_id;

#3
#select
#     customer.first_name,
#     city.city
#from customer
#join address
#        on customer.address_id = address.address_id
#join city
#        on address.city_id = city.city_id;

#4
#select
#     customer.first_name,
#	 city.city
#from customer
#join address
#        on customer.address_id = address.address_id
#join city
#       on address.city_id = city.city_id
#
#        where city.city = 'London'; 

#5
select
     customer.first_name,
     rental.rental_date
from customer
join rental
          on customer.customer_id = rental.customer_id
          order by rental.rental_date desc;
          
          
     


     
