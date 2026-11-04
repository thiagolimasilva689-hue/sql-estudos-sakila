#1) COUNT simples
#Quantos atores existem na tabela actor?
#select
 #     count(*) from actor;
#2) AVG 
#Qual a duração média (length) dos filmes? 
#select
 #    AVG(length)
	#from 
#film;

#3) MAX e MIN 
#Qual o maior e o menor valor de pagamento (amount) na tabela payment? 
#select
 #     max(amount) as maior_pagamento,
  #    min(amount) as menor_pagamento
#from payment;

#Exercício 4 — GROUP BY + COUNT 
#Quantos filmes existem por classificação (rating)? Agrupe por rating. 
#SELECT 
 #   rating,
  #  COUNT(rating) AS quantidade
#FROM film
#GROUP BY rating;

#Exercício 5 — ORDER BY 
#Liste os 5 filmes mais longos (length). Mostre o título e a duração, ordenados do maior para o menor. 
select
       title as titulo,
       length as duração
from film
ORDER BY length DESC
limit 5;