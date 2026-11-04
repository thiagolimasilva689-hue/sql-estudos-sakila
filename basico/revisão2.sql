#Exercício 1 — COUNT com WHERE 
#Quantos filmes têm duração (length) maior que 150 minutos? 

#select COUNT(length) from film
#where length

#Exercício 2 — AVG com GROUP BY 
#Qual a duração média dos filmes por classificação (rating)? Ordene da maior média para a menor. 
#select rating,AVG(length) as media from film
#GROUP BY rating
#order by media DESC

 
#Exercício 3 — JOIN com duas tabelas 
#Liste o nome do cliente (first_name, last_name) e o total que ele gastou em pagamentos. 
#Use customer e payment. Ordene do maior gasto para o menor. Limite a 5 resultados. 
#select
 #     customer.first_name as nome,
  #    customer.last_name as sobrenome,
   #   SUM(payment.amount) AS total_gasto
#from customer
#join payment 
#GROUP BY customer.first_name, customer.last_name
#ORDER BY total_gasto DESC
#LIMIT 5;
 
#Exercício 4 — IN 
## os filmes com classificação (rating) 'PG' ou 'G' e com duração menor que 100 minutos. 
#select title,rating,length from film
#where rating in ('PG','G') and length < 100


#Exercício 5 — LIKE 
#Liste os clientes cujo primeiro nome (first_name) começa com 'M' e termina com 'A'. 
#Dica: LIKE 'M%A' 
#select first_name as NOME from customer
#where first_name like "M%A";
 
#Exercício 6 — JOIN com três tabelas 
#Liste o título do filme, o nome da categoria e o idioma. Use film, film_category, category e language.  
select 
	   film.title as  título_filme,
       film_category.category_id as  categoria,
	   language.name as idioma
from film
JOIN film_category ON film.film_id = film_category.film_id
JOIN category ON film_category.category_id = category.category_id
JOIN language ON film.language_id = language.language_id
group by film.title,film_category.category_id, language.language_id;
              
      