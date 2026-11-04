use sakila;
# Modificando tabelas
select   customer_id, amount,
amount - (amount * 0.10 ) as discount # Adicionando tabela
from 
payment
where  customer_id = 1;