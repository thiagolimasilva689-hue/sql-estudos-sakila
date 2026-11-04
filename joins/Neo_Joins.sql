
#Exercício 1 — INNER JOIN simples
#Traga o nome do cliente e a cidade onde ele mora.
#Tabelas: customer, address, city.
#select
 #     customer.first_name as Nome,
  #    customer.last_name as Sobrenome,
   #   city.city as Cidade
#from customer
 #         inner join address
  #                     on customer.address_id = address.address_id
	#	  inner join city
                  #on city.city_id = address.city_id
                  
#Exercício 2 — LEFT JOIN
#Traga todos os atores e os filmes que eles participaram.
#Mesmo que o ator não tenha filme, ele deve aparecer.
#Tabelas: actor, film_actor, film.
#select
 #     actor.first_name as Nome_Ator,
  #    actor.last_name as Sobrenome_Ator,
   #   film.title as Titulo_Filme
#from actor
 #        LEFT JOIN film_actor
  #  ON film_actor.actor_id = actor.actor_id
#LEFT JOIN film
 #   ON film_actor.film_id = film.film_id
#ORDER BY actor.first_name ASC;


#Exercício 3 — INNER JOIN com GROUP BY
#Mostre a quantidade de filmes por categoria.
#Tabelas: category, film_category.
#select
 #     category.name as Nome_Categoria,
  #    count(film_category.film_id) as Quantidade_Filmess
#from category
 #          inner join film_category
  #                           on film_category.category_id = category.category_id
#group by category.name
#order by  count(film_category.film_id)  desc

#Exercício 4 — LEFT JOIN com verificação de vazio
#Mostre todos os clientes e os aluguéis que eles fizeram.
#Inclua clientes que nunca alugaram.
#abelas: customer, rental.
#select
 #    customer.first_name as Nome_Cliente,
  #   customer.last_name as Sobrenome_Cliente,
   #  rental.rental_id as aluguel
#from customer
 #          left join  rental
  #                on rental.customer_id = customer.customer_id
#order by customer.first_name,rental.rental_id  desc

#Exercício 5 — RIGHT JOIN raro
#Mostre todos os pagamentos e os clientes correspondentes.
#Inclua pagamentos que talvez não tenham cliente associado.
#Tabelas: payment, customer.
select
      customer.first_name as Nome_Cliente,
      customer.last_name as Sobrenome_Cliente,
      payment.payment_id as Pagamento_Cliente
from customer
      right join payment
           on payment.customer_id = customer.customer_id
order by customer.first_name,payment.payment_id desc
      