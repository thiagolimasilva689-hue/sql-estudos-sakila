#Exercício 1 — COUNT simples
#Quantos clientes existem na tabela customer?
use sakila;
#select 
 #     count(customer_id)
#from customer

#Exercício 2 — COUNT com WHERE 
#Quantos clientes são da loja 1 (store_id = 1)? 
#select
#      count(customer_id)
#from customer
#where store_id = 1

#Exercício 3 — MAX e MIN 
#Qual o maior e o menor valor de pagamento (amount) na tabela payment? 
#select
 #      max(amount) as Maior_Pagamento,
  #     min(amount) as Menor_Pagamento
#from payment

#Exercício 4 — AVG 
#Qual a média de duração (length) dos filmes na tabela film? 
#select
#      avg(length)
#from film

#Exercício 5 — SUM 
#Qual o valor total de todos os pagamentos (amount) da tabela payment? 
#select
 #    sum(amount) 
#from payment

#Exercício 6 — GROUP BY + COUNT 
#Quantos filmes existem por classificação (rating)? Agrupe por rating e mostre a quantidade. 
#select
 #      rating,
  #     count(rating) as Quantidade
#from film
#GROUP BY rating

#Exercício 7 — GROUP BY + AVG 
#Qual a duração média (length) dos filmes por classificação (rating)? 
#select 
#	  rating as classificação,
 #     avg(length) as Duração_Media
#from film
#group by rating;

#Exercício 8 — GROUP BY + SUM 
#Qual o total de vendas (amount) por cliente (customer_id)? Mostre apenas os 5 primeiros, ordenados do maior para o menor. 
#select
 #     customer.customer_id AS ID,
  #  customer.first_name AS Nome,
   # customer.last_name AS Sobrenome,
    #  sum(payment.amount) as Total_vendas
#from customer
#join payment
 #           on customer.customer_id = payment.customer_id
#group by  customer.customer_id, customer.first_name
#ORDER BY Total_vendas DESC
#LIMIT 5
 
 #Exercício 9 — GROUP BY + HAVING 
 #Quais classificações (rating) têm média de duração (length) maior que 120 minutos? 
 #select 
  #     rating as classificações,
   #    avg(length) as média_de_duração
#from film
#group by classificações
#having AVG(length) > 120;
 
#Exercício 10 — Desafio com JOIN + GROUP BY 
#Qual o total de vendas (amount) por loja (store_id)? Use payment e customer, agrupe por store_id. 
select
    customer.store_id AS loja,
    SUM(payment.amount) AS total_de_vendas
FROM payment
JOIN customer ON payment.customer_id = customer.customer_id
GROUP BY customer.store_id;
