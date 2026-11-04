#Exercício 3 — JOIN + filtro (WHERE)
#👉 Liste os clientes que moram na cidade "London"
#💡 Dica:
#usar WHERE city.city = 'London'
select 
   customer.first_name,
   customer.last_name,
   city.city
from customer
join city
    on customer_id = city_id
    where city.city = 'London';