#Exercício 1: INNER JOIN simples
#Pergunta: Liste o nome dos clientes e o endereço de cada um.
#Tabelas: customer e address
#Dica: Use INNER JOIN entre customer.address_id e address.address_id.

use sakila;
#select
 #     customer.first_name as nome,
  #    customer.last_name as Sobrenome,
    #  address.address as Enderenço
#from customer
 #          inner join address
  #               ON customer.address_id = address.address_id;
   


#Exercício 2: LEFT JOIN
#Pergunta: Liste todos os clientes e, se tiverem, o nome da loja onde fizeram cadastro.
#Tabelas: customer e store
#Dica: Use LEFT JOIN para mostrar todos os clientes, mesmo que não tenham loja associada.

#select
 #     customer.first_name as nome,
  #   customer.last_name as Sobrenome,
   #  store.store_id AS loja_id
#from customer
 #     left join store
	#                 on customer.store_id = store.store_id


#Exercício 3: INNER JOIN com várias tabelas
#Pergunta: Liste o nome do cliente, a cidade e o país de cada um.
#Tabelas: customer, address, city, country
#Dica: Você vai encadear três INNER JOINs.
#select
 #     customer.first_name as Nome,
  #    customer.last_name as Sobrenome,
	#  address.address as Enderenço,
     # city.city as Cidade,
      #country.country as País
#from customer
 #          inner join address
  #               ON customer.address_id = address.address_id
	#	   inner join city
     #            ON  address.city_id = city.city_id
		#   inner join country
         #        ON  city.country_id = country.country_id


#Exercício 4: RIGHT JOIN
#Pergunta: Liste todos os pagamentos e o nome do cliente correspondente, incluindo pagamentos que talvez não tenham cliente associado.
#Tabelas: payment e customer
#Dica: Use RIGHT JOIN para priorizar a tabela de pagamentos.
#select
#       customer.first_name as Nome,
#	   customer.last_name as Sobrenome,
 #      payment.amount as Pagamento
#from customer
 #        right join payment
  #                 on customer.customer_id  = payment.customer_id


#Exercício 5: JOIN com agrupamento
#Pergunta: Liste o nome de cada categoria e a quantidade de filmes que ela possui.
#Tabelas: category, film_category
#Dica: Use INNER JOIN + GROUP BY + COUNT
select
      category.name as Nome_categoria,
      count(film.film_id) as Quantidade_filme
from category
           inner join film_category
                     on film_category.category_id = category.category_id
		  inner join film
                     on film_category.film_id = film.film_id
group by category.name
order by  Quantidade_filme desc