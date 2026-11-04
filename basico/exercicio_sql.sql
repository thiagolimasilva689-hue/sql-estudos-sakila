#Exercício 1 — JOIN + COUNT
#Liste o nome de cada ator e quantos filmes ele participou. Ordene do que mais participou para o
#que menos. Limite a 10.
#select
 #    actor.first_name as nome,
  #   count(film.film_id) as Quantidade_film
#from actor
#join  film_actor
 #             on actor.actor_id = film_actor.actor_id
#join film
 #          on film.film_id = film_actor.film_id
#group by  actor.first_name
#order by count(film.film_id) Desc
#limit 10
      
#Exercício 2 — JOIN + AVG + GROUP BY
#Liste a categoria de filme e a duração média dos filmes daquela categoria.
#SELECT
 #   category.name AS categoria,
  #  AVG(film.length) AS media_duracao
#FROM film
#JOIN film_category ON film.film_id = film_category.film_id
#JOIN category ON film_category.category_id = category.category_id
#GROUP BY category.name
#ORDER BY media_duracao DESC;
 
 
#Exercício 3 — WHERE + LIKE
#Liste os filmes cujo título contém a palavra "LOVE". Mostre título e ano de lançamento.
#select title,release_year from film
#where title like '%LOVE%';

#Exercício 4 — JOIN + SUM + GROUP BY 
#Liste o nome de cada cliente e o valor total que ele já gastou em aluguéis. 
#Use customer e payment. Ordene do maior gasto para o menor. Limite a 5
#select
 #     customer.first_name as Nome_cliente,
  #    sum(payment.amount) as valor_total
#from customer
#join payment
 
           #on customer.customer_id =  payment.customer_id
#group by customer.first_name 
#order by   sum(payment.amount) desc
 
 
#Exercício 5 — Subquery (desafio) 
#Liste os filmes cuja duração é maior que a duração média de todos os filmes. Mostre título e duração. Ordene do maior para o menor. 
#Dica: use WHERE length > (SELECT AVG(length) FROM film) 
select * from film
where  length > (SELECT AVG(length) FROM film) 
ORDER BY length DESC;
