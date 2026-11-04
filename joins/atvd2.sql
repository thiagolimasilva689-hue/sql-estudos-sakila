#Exercício 2 — JOIN com cidade
#👉 Liste:
#nome do cliente
#cidade
#💡 Tabelas:
#customer
#address
select
     customer.first_name,
     customer.last_name,
     city.city
from customer
join address 
    on customer.customer_id = address.address_id
join city 
      on customer.customer_id = city.city_id;
