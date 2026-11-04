#Exercício 1 — COUNT com WHERE 
#Quantos filmes têm duração (length) maior que 120 minutos? 
#select count(*) from film where length > 120;

#Exercício 2 — AVG 
#Qual a média de valor (amount) dos pagamentos na tabela payment? 
#select
 #      avg(amount) as Media_valor
#from payment;

#Exercício 3 — GROUP BY + COUNT 
#Quantos clientes existem por loja (store_id)? Mostre store_id e a quantidade. 
#select
 #      count(customer_id) as Quantidade_Clientes,
  #     store_id as Lojas
#from customer
#group by store_id

#Exercício 4 — ORDER BY 
#Liste os 5 atores (actor) com os nomes mais longos (quantidade de caracteres). Mostre first_name e last_name. 
#Dica: use ORDER BY LENGTH(first_name) DESC. 
#select 
 #    first_name as Nome,
  #   last_name as sobrenome
#from actor
#order by LENGTH(first_name) DESC
#limit 5;


#Exercício 5 — JOIN simples 
#Liste o nome do cliente (first_name, last_name) e o endereço (address) dele. Use JOIN entre customer e address. 
select
      customer.first_name as Nome,
     customer.last_name as sobrenome,
     address.address as endereço
from customer
JOIN address 
    ON customer.address_id = address.address_id;
     
      

