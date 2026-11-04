#Desafio 1 — HAVING
#Categorias com mais de 60 filmes
#Mostre o nome da categoria e a quantidade de filmes, apenas das categorias que têm mais de 60 filmes.
#Tabelas: category, film_category
select
      category.name as nome_categoria,
      count(film_category.film_id) as quantidade_filme
from category
join film_category
               on category.category_id = film_category.category_id
group by  category.name
having quantidade_filme > 60


#Desafio 2 — Subquery no WHERE
#Filmes com duração acima da média

#Mostre o título e a duração dos filmes que têm duração maior que a média de todos os filmes. Ordene do mais longo para o mais curto.

#Tabelas: film
select title,length from film where length > (select avg(length) from film)



#Desafio 3 — JOIN com 3 tabelas + WHERE + GROUP BY
#Total gasto por cliente da cidade de London

#Mostre o nome do cliente e o total que ele gastou, apenas dos clientes que moram na cidade de London. Ordene do maior gasto para o menor.

#Tabelas: customer, payment, address, city
select
      customer.first_name as nome_cliente,
      sum(payment.amount) as Total,
      city.city as cidade
from customer
        join payment
                    on payment.customer_id = customer.customer_id
	    join address
                    on address.address_id = customer.address_id
		join city
                   on city.city_id = address.city_id
WHERE city.city = 'London'
GROUP BY nome_cliente, city.city
ORDER BY Total DESC;
