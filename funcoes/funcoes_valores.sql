# função maior max()
#função menor  min() 
# função media avg()
use sakila;
# retornar o maior valor
#select max(amount) from payment;

# retornar o menor valor
#select min(amount) from payment;

# retorna a media dos valores
#select avg(amount) from payment;

# tudos os valores
select 
      max(amount) as maior_valor,
      min(amount) as menor_valor,
      avg(amount) as 'Media dos valores'
from payment