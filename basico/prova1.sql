# Exercício 1 — DISTINCT
#👉 Liste todos os países diferentes da tabela country
use sakila;
#select distinct * from country;


#Exercício 2 — WHERE + comparação
#👉 Liste os filmes (film) com duração maior que 100 minutos
#select * from film where length > 100;

#Exercício 3 — LIKE
#👉 Liste os clientes cujo nome começa com "A"
#select * from customer where first_name like 'a%';

# Exercício 4 — IN
#👉 Liste os clientes que pertencem às lojas 1 ou 2 (store_id)
#select * from customer where store_id in (1,2);

#Exercício 5 — BETWEEN
#👉 Liste os filmes com duração entre 80 e 120 minutos
#select * from film where length between 80 and 120;

#Exercício 6 — IS NULL
#👉 Liste os endereços (address) que NÃO possuem address2 preenchido
#select * from address where address2 is null;

#Exercício 7 — AND + OR
#👉 Liste os filmes:
#com duração maior que 100
#e classificação (rating) seja 'PG' OU 'G'
#select * from film  where length > 100 and rating in('PG','G')


#Exercício 8 — JOIN básico
#👉 Liste:
#nome do cliente
#endereço
#💡 Tabelas:
#customer
#address
#select
 #     customer.first_name,
  #    address.address
#from customer
#join address
 #      on customer.customer_id = address.address_id;
 
#Exercício 9 — JOIN com cidade
#👉 Liste:
#nome do cliente
#cidade
#💡 Caminho:
#Plain text
#customer → address → city
#select
#     customer.first_name,
#      city.city
#from customer
#join address
#          on customer.customer_id = address.address_id
#join city
#		on customer.address_id = city.city_id;


# Exercício 10 — JOIN + WHERE + ORDER BY 🔥
#👉 Liste:
#nome do cliente
#data do aluguel
#👉 Condições:
#apenas alugueis após '2005-01-01'
#👉 Ordene:
#do mais recente para o mais antigo
select
      customer.first_name,
      rental.rental_date
from customer
join rental
          on customer.customer_id = rental.rental_id
          order by rental_date asc;
      
      

      
      