#🔹 Exercício 4 — JOIN com aluguel (rental)
#👉 Liste:
#nome do cliente
#data do aluguel
#💡 Tabelas:
#customer
#rental
select
     customer.first_name,
     rental.rental_date
from customer
join rental
     on customer.customer_id = rental.rental_id;
     