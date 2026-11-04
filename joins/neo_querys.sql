#Questão 1 — Clientes por cidade
#Traga a quantidade de clientes por cidade, ordenada da cidade com mais clientes para a com menos.
#select  
 #      city.city as Cidade ,
  #     count(customer_id) as Quantidade_Cliente
#from city
 #       join address
  #                 on address.city_id = city.city_id
	#	join customer
     #              on customer.address_id = address.address_id
#group by Cidade
#order by  Quantidade_Cliente desc


#Questão 2 — Filmes de ação
#Liste o título e a duração dos filmes da categoria Action, ordenados pela duração do maior para o menor.       
#select 
 #     film.title as Titulo,
  #    film.length as Duracao_Filme
#from film
#	join film_category
#		on film_category.film_id = film.film_id
#	join category
 #       on category.category_id = film_category.category_id
#where category.name = "Action"
#order by  film.length desc

#Questão 3 — Atores do filme "ACADEMY DINOSAUR"
#Mostre o nome completo dos atores que participam do filme ACADEMY DINOSAUR.
#select
 #     actor.first_name as Nome,
  #    actor.last_name as Sobrenome
#from actor
 #       join film_actor
  #           on film_actor.actor_id = actor.actor_id
	#	join film 
     #        on film.film_id = film_actor.film_id
#where film.title = "ACADEMY DINOSAUR"

#Questão 4 — Clientes que nunca alugaram
#Traga o nome completo dos clientes que nunca fizeram nenhum aluguel.
#SELECT 
 #   customer.first_name AS Nome,
  #  customer.last_name AS Sobrenome
#FROM customer
#LEFT JOIN rental 
 #   ON rental.customer_id = customer.customer_id
#WHERE rental.rental_id IS NULL;


#Questão 5 — Total pago por cliente
#Mostre o nome completo do cliente e o total que ele já pagou, apenas para clientes que pagaram mais de 100.
select 
	  customer.first_name AS Nome,
      customer.last_name AS Sobrenome,
      sum(payment.amount) as Total_pago
from customer
          inner join payment
                 on payment.customer_id = customer.customer_id
	group by customer.first_name , customer.last_name
    having Total_pago> 100
    ORDER BY Total_pago DESC;
    

     