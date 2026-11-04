#Exercício 1 — JOIN de 3 tabelas + GROUP BY + ORDER BY
#Pergunta: Mostre o nome completo dos clientes e a quantidade de aluguéis que cada um fez. Ordene do cliente com mais aluguéis para o com menos.
#Tabelas: customer, rental
#O que treinar: JOIN, GROUP BY, ORDER BY, COUNT
#select
#	  customer.first_name as Nome,
 #     customer.last_name as Sobrenome,
  #    count(rental.rental_id) as Quantidade_alugueis
#from customer
 #         inner join rental
  #                  on rental.customer_id = customer.customer_id
#group by  customer.first_name,customer.last_name
#order by Quantidade_alugueis desc


#Exercício 2 — JOIN de 4 tabelas + WHERE + GROUP BY + HAVING
#Pergunta: Mostre o nome da categoria e o total de dinheiro pago em aluguéis por categoria
#apenas para categorias que faturaram mais de 1000. Ordene do maior para o menor.
#Tabelas: category, film_category, film, inventory, rental, payment
#O que treinar: Múltiplos JOINs, WHERE, GROUP BY, HAVING, SUM
#select
 #    category.name as Nome_Categoria,
  #   Sum(payment.amount) As Total_faturado
#from category
#	inner join film_category
 #                on film_category.category_id = category.category_id
	#inner join film
     #            on film_category.film_id = film.film_id
	#inner join inventory
     #            on inventory.film_id  = film.film_id
	#inner join rental
     #            on rental.inventory_id  = inventory.inventory_id
	#inner join payment
     #           on payment.payment_id = rental.rental_id
	#group by category.name
    #having  Sum(payment.amount) > 1000
    #order by Sum(payment.amount) desc


#Exercício 3 — LEFT JOIN + IS NULL
#Pergunta: Mostre o nome completo dos clientes que nunca fizeram nenhum aluguel.
#Se não houver nenhum, mostre quantos clientes têm pelo menos um aluguel.
#Tabelas: customer, rental
#O que treinar: LEFT JOIN, IS NULL, COUNT
#select 
 #      customer.first_name as Nome,
  #     customer.last_name as Sobrenome
#from customer
 #     left join rental
  #          on rental.customer_id = customer.customer_id
   #WHERE rental.rental_id IS NULL;
   
#Exercício 4 — Subquery no WHERE
#Pergunta: Mostre o título e a duração dos filmes que têm duração maior que a média de todos os filmes. 
#Ordene do mais longo para o mais curto.
#Tabelas: film
#O que treinar: Subquery, AVG, WHERE, ORDER BY
#select
 #      title as Titulo,
  #     length as Duracao_Filme
#from film 
 #       where  length > (select avg(length) from film)
  #      order by length desc


#Exercício 5 — JOIN + GROUP BY + HAVING
#Pergunta: Mostre o nome dos atores que participaram de mais de 20 filmes. Ordene do que mais participou para o que menos participou.
#Tabelas: actor, film_actor
#O que treinar: JOIN, GROUP BY, HAVING, COUNT, ORDER BY
select
    actor.first_name as Nome,
    actor.last_name as Sobrenome,
    count(film_actor.film_id) as Quantidade_Filme
from actor
        inner join film_actor
                   on film_actor.actor_id = actor.actor_id
		inner join film
                   on film.film_id = film_actor.film_id
group by actor.first_name,actor.last_name
having count(film_actor.film_id) > 20
order by count(film_actor.film_id) desc


 