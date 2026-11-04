#JOIN simples (2 tabelas)
# 1) liste o nome do cliente (first_name, last_name) e seu endereço (address). Use customer e address.
use sakila;
#select
 #     customer.first_name as nome,
  #    customer.last_name as sobrenome,
   #   address.address
#from customer
#join address
 #on customer.address_id = address.address_id

#Exercício 2 — JOIN + GROUP BY (2 tabelas)
#Liste o nome da categoria (category) e a quantidade de filmes em cada uma. Use category e film_category. Ordene da maior para a menor.
#select
 #     category.name as nome_categoria,
  #    count(film_category.film_id) as  quantidade_filmes
#from category
#join film_category
 #                on category.category_id = film_category.category_id
#group by nome_categoria
#order by quantidade_filmes desc


#Exercício 3 — JOIN + SUM (3 tabelas)
#Liste o nome do cliente e o total que ele gastou. Use customer, payment. Ordene do maior gasto para o menor. Limite a 5.
 #select 
  #     customer.first_name as nome_cliente,
   #    customer.last_name AS sobrenome,
    #   sum(amount) as Total_gastor
#from customer
#join payment
 #          on customer.customer_id = payment.customer_id
#group by nome_cliente,sobrenome
#order by Total_gastor
#limit 5


#Exercício 4 — JOIN + WHERE (3 tabelas)
#Liste o título do filme, o nome da categoria e o idioma, 
#apenas dos filmes de ação (category.name = 'Action'). Use film, film_category, category, language.
#select
 #    film.title as titulo,
  #   category.name as nome_categoria,
   #  language.name as linguagem
#from film
#join film_category
 #                on film.film_id = film_category.film_id
#join category
 #            on film_category.category_id = category.category_id
#join language
 #           on film.language_id = language.language_id
#where category.name  = 'Action'
    


#Exercício 5 — JOIN + COUNT + GROUP BY (3 tabelas)
#Liste o nome do ator e a quantidade de filmes que ele participou. Use actor, film_actor. Ordene
#do maior para o menor. Limite a 5.
select
    actor.first_name as nome,
    actor.last_name as sobrenome,
    count(film_actor.film_id) as quantidade_film
from actor
join 
    film_actor
              on actor.actor_id = film_actor.actor_id
group by nome,sobrenome
order by  quantidade_film desc
limit 5
    
    
    
      