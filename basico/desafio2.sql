#Exercício 1 — DISTINCT
# Liste todas as cidades únicas da tabela city
use sakila;
# distinct * from city;
#Exercício 2 — ORDER BY
#👉 Liste os clientes (customer) ordenados pelo sobrenome (last_name) em ordem crescente
#select * from customer order by last_name asc;

#Exercício 3 — BETWEEN
#👉 Liste os filmes (film) com duração entre 90 e 120 minutos
#select * from film where length between  90 and 120;

# Exercício 4 — IN
# Liste os clientes que estão nas lojas 1 ou 2 (store_id)
#select * from customer where store_id in(1,2);

#Exercício 5 — LIKE
#👉 Liste os clientes cujo nome começa com "A"
#select * from customer where first_name like"a%"

# Exercício 6 — IS NULL + operadores lógicos
#👉 Liste os endereços (address) que NÃO têm address2 preenchido
select * from address where address2 is null;

# Desafio extra (nível +1)
#👉 Liste os filmes:
#com duração maior que 100 minutos
#e classificação (rating) seja 'PG' ou 'G'

#select * from film where length > 100 and rating in ('PG','G');
