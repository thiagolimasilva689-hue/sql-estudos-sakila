#As funções COUNT e SUM são funções de agregação no SQL usadas para resumir dados. COUNT conta o número de linhas ou registros 
#(incluindo valores nulos, se for COUNT(*)), enquanto SUM calcula a soma total de valores numéricos em uma coluna específica.
use sakila;
select 
      sum(amount) as 'Total de vendas',
      count(amount) as 'Numero de vendas'
from 
    payment
where staff_id = 2;