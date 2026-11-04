# COUNT + WHERE 
# 1) Quantos clientes são da loja 1 (store_id = 1)? 
# R :select count(*)  from customer where  store_id = 1;

# AVG + GROUP BY 

# 2) Qual a duração média dos filmes por classificação (rating)? Ordene da maior para a menor. 
#select avg(length) as duração_media,rating from film
#group by rating 
#order by duração_media DESC;

#JOIN + SUM 
#3)Liste o nome do cliente e o total que ele gastou. Use customer e payment. 
#Ordene do maior gasto para o menor. Limite a 5.
#select 
 #      customer.first_name as nome_cliente,
  #     customer.last_name as sobrenome,
	#  SUM(payment.amount) AS total_gasto
#from customer
#join payment
 #          on customer.customer_id = payment.customer_id
 #group by customer.first_name, customer.last_name
#ORDER BY total_gasto DESC
#LIMIT 5;

#Exercício 9 — IN + AND 
#4)Liste os filmes com classificação 'PG' ou 'G' e duração menor que 100 minutos. 
#select title,rating,length from film
#where rating in ('PG','G') and length < 100

# LIKE 
#5) Liste os clientes cujo primeiro nome começa com 'M' e termina com 'A'. 
select first_name from customer
where first_name like "M%A"
       
