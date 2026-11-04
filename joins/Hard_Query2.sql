#1) INNER JOIN com 4 tabelas
#Pergunta: Traga o nome do filme, a categoria e o idioma original (language). Ordene por categoria e depois por título do filme.
#Tabelas envolvidas: film, film_category, category, language
#O que treinar: INNER JOIN com 4 tabelas.
#select 
 #     film.title as Nome_Filme,
  #    category.name as Categoria_Tipo,
   #   language.name as Idioma
#from film
#INNER JOIN film_category ON film_category.film_id = film.film_id
#INNER JOIN category ON category.category_id = film_category.category_id
#INNER JOIN language ON language.language_id = film.language_id
#ORDER BY category.name ASC, film.title ASC;


#Exercício 2 — LEFT JOIN
#Pergunta: Traga todos os atores e a quantidade de filmes que cada um participou.
#Mesmo que o ator não tenha filme, ele deve aparecer. Ordene do que mais participou para o que menos participou.
#Tabelas envolvidas: actor, film_actor
#O que treinar: LEFT JOIN + COUNT + GROUP BY.
#select
 #       actor.first_name as Nome,
  #      actor.last_name as Sobrenome,
   #     count(film.film_id) as Quantidade_filmes
#from actor
#LEFT JOIN film_actor ON film_actor.actor_id = actor.actor_id
#INNER JOIN film ON film_actor.film_id = film.film_id
#GROUP BY actor.actor_id, actor.first_name, actor.last_name
#ORDER BY Quantidade_Filmes DESC;

#Exercício 3 — GROUP BY + HAVING
#Pergunta: Mostre o nome do cliente e a quantidade de pagamentos (payment) que ele fez. 
#Apenas clientes que fizeram mais de 30 pagamentos. Ordene do que mais fez para o que menos fez.
#Tabelas envolvidas: customer, payment
#O que treinar: GROUP BY + HAVING + COUNT.
#select
 #     customer.first_name as Nome_Cliente,
  #    customer.last_name as Sobrenome_Cliente,
   #   count(payment.payment_id) as Quantidade_Pagamento
#from customer
#inner join payment on payment.customer_id = customer.customer_id
#group by  customer.customer_id, customer.first_name, customer.last_name
#having  Quantidade_Pagamento > 30
#ORDER BY Quantidade_Pagamento DESC;

#Exercício 4 — Subquery no WHERE
#Pergunta: Mostre o título e o valor de substituição (replacement_cost) dos filmes que têm valor de
#substituição maior que a média de todos os filmes. Ordene do mais caro para o mais barato.
#Tabelas envolvidas: film
#O que treinar: Subquery no WHERE.
#select 
 #     title as Titulo_filme,
	#  replacement_cost as  valor_substituicao
#from film
#where  replacement_cost > (select avg(replacement_cost) from film)
#order by  valor_substituicao desc
 
#Exercício 5 — JOIN + GROUP BY + HAVING + Subquery
#Pergunta: Mostre o nome do cliente e o total gasto por ele (soma de payment.amount), apenas dos clientes que gastaram mais de 150 no total. 
#Ordene do maior gasto para o menor.
#Tabelas envolvidas: customer, payment
#O que treinar: JOIN + GROUP BY + HAVING + ORDER BY.
select
     customer.first_name as Nome_Cliente,
	 customer.last_name as Sobrenome_Cliente,
     sum(payment.amount) as Total_Gastor
from customer
inner join payment on payment.customer_id = customer.customer_id
group by customer.customer_id,customer.first_name,customer.last_name
having Total_Gastor > 150
order by Total_Gastor desc




      