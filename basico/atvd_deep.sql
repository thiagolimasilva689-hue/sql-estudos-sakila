use sakila;
-- 1
 #select * from customer
#where store_id = 1;

-- 2
#select * from film
#where length > 120;

-- 3
#select * from customer
#where first_name like 's%'

-- 4
#select * from film
#where rating in ('PG','G')

-- 5
#select * from payment
#where amount between 5 and 10

-- 6
#select * from customer
#where last_name is null

-- 7
#select * from film
#where length  order by length desc;

-- 8
#INSERT INTO customer (customer_id, store_id, first_name, last_name, email, address_id, active, create_date)
#VALUES (DEFAULT, 1, 'Thiago', 'Oliveira', 'Thiago@gmail.com', 1, 1, NOW());

-- 9
#select
#     customer.first_name,
#     customer.last_name,
#     address.address
#from customer
#join address
#           on customer.address_id  = address.address_id;

-- 10
#select
#     customer.first_name,
#     customer.last_name,
#	 address.address,
#     address.district
#from customer
#join address
#          on customer.address_id  = address.address_id
#          where address.district = 'California';

-- 11
SELECT 
    film.title,
    category.name,
    language.name
FROM film
JOIN film_category 
    ON film.film_id = film_category.film_id
JOIN category 
    ON film_category.category_id = category.category_id
JOIN language 
    ON film.language_id = language.language_id;




