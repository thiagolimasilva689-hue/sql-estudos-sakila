#1)
# Clientes por loja 
#Mostre quantos clientes existem em cada loja (store_id). 
#SELECT store_id, COUNT(*) 
#FROM customer 
#GROUP BY store_id;

#2)Média de duração por classificação 
#Mostre a duração média (length) dos filmes por classificação (rating), ordenado da maior média para a menor.
#SELECT rating, AVG(length) AS media_duracao
#FROM film
#GROUP BY rating
#ORDER BY media_duracao DESC;


#3)Total gasto por cliente 
#Mostre o nome do cliente e o total que ele gastou em pagamentos (payment)
#ordenado do maior gasto para o menor. Mostre apenas os 10 primeiros. 
SELECT 
    customer.customer_id,
    customer.first_name,
    customer.last_name,
    SUM(payment.amount) AS total_gasto
FROM customer
JOIN payment ON customer.customer_id = payment.customer_id
GROUP BY customer.customer_id, customer.first_name, customer.last_name
ORDER BY total_gasto DESC
LIMIT 10;

	