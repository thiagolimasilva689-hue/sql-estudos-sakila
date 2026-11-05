#17)CASE WHEN com preços
#Usando a tabela film do banco Sakila:
#Objetivo: classificar os filmes de acordo com o preço de aluguel (rental_rate).
#Requisitos:
#1. Exiba as colunas title e rental_rate.
#2. Crie uma classificação usando CASE WHEN:
#   - Preço menor ou igual a 1.00: 'Econômico'.
#   - Preço maior que 1.00 e menor ou igual a 3.00: 'Intermediário'.
#   - Preço maior que 3.00: 'Premium'.
#3. Dê à nova coluna o apelido categoria_preco.
#4. Ordene pelo preço (rental_rate) em ordem crescente (ASC).
#select title, rental_rate,
#case 
 #   when rental_rate <=  1.00 then "Econômico"
  #  when rental_rate > 1.00 and rental_rate <= 3.00 then "Intermediário"
   # else "Premium"
   # end as categoria_preco
   # from film
   # order by rental_rate asc


#18)Na tabela film, crie uma consulta que classifique os filmes de acordo com a duração e o preço do aluguel.
#Use estas regras, nesta ordem:
#1. Se length > 120 e rental_rate > 3.00, classifique como 'Longo e Premium'.
#2. Se length > 120, classifique como 'Longo'.
#3. Se rental_rate > 3.00, classifique como 'Premium'.
#4. Caso contrário, classifique como 'Regular'.
#Requisitos da consulta:
#- Exiba title, length e rental_rate.
#- Use CASE WHEN para criar a coluna perfil_filme.
#- Ordene por length em ordem decrescente.

#select title, length,rental_rate,
#CASE
 #   When length > 120 and rental_rate > 3.00 then "Longo e Premium"
  #  WHEN length > 120 then "Longo"
   # WHEN  rental_rate > 3.00 THEN "Premium"
    #Else "Regular"
    #end as perfil_filme
#from film
#order by length desc


#19)Usando o banco Sakila:
#Objetivo: mostrar o título dos filmes e o identificador de cada item disponível no inventário.
#Requisitos:
#1. Selecione title da tabela film.
#2. Selecione inventory_id da tabela inventory.
#3. Relacione as tabelas usando film_id.
#4. Utilize INNER JOIN.
#select
 #     title as Titulo_filme,
  #    inventory.inventory_id as  identificador_filme
#from film
#inner join inventory on inventory.film_id = film.film_id

#20) INNER JOIN + WHERE
#Agora vamos aumentar um pouquinho a dificuldade.
#Objetivo: mostrar os títulos dos filmes e os identificadores dos itens de inventário, mas somente para filmes com classificação PG-13.
#Requisitos
#1. Selecione title da tabela film.
#2. Selecione inventory_id da tabela inventory.
#3. Relacione as tabelas usando film_id.
#4. Utilize INNER JOIN.
#5. Filtre somente os filmes cuja classificação seja PG-13, usando WHERE.
#6. Ordene os resultados pelo título em ordem alfabética (ASC).
#select 
 #       title as Titulo_filme,
  #      inventory.inventory_id as  identificador_filme
#from film
#inner join inventory on inventory.film_id = film.film_id
#where film.rating = "PG-13"
#order by Titulo_filme asc


#21)INNER JOIN com três tabelas
#Agora vamos relacionar três tabelas do banco Sakila:
#- film: contém informações dos filmes.
#- inventory: contém os itens disponíveis no inventário.
#- store: contém informações das lojas.
#Objetivo: mostrar o título do filme, o identificador do inventário e a loja à qual aquele item pertence.
#Requisitos
#1. Selecione film.title.
#2. Selecione inventory.inventory_id.
#3. Selecione inventory.store_id.
#4. Relacione film com inventory usando film_id.
#5. Relacione inventory com store usando store_id.
#6. Utilize INNER JOIN nas duas relações.
#7. Ordene pelo título em ordem alfabética (ASC).
#select
 #    title as Titulo_filme,
  #   inventory.inventory_id as  identificador_filme,
   #  inventory.store_id as Informacao_loja
#from film
#inner join inventory on inventory.film_id = film.film_id
#inner join store on store.store_id = inventory.store_id
#order by Titulo_filme asc

#22)INNER JOIN + WHERE + três tabelas
#Usando o banco Sakila:
#Objetivo: mostrar os títulos dos filmes, os identificadores do inventário e as lojas correspondentes, mas somente para filmes com classificação PG-13.
#Requisitos
#1. Selecione film.title.
#2. Selecione inventory.inventory_id.
#3. Selecione inventory.store_id.
#4. Relacione film com inventory usando film_id.
#5. Relacione inventory com store usando store_id.
#6. Utilize dois INNER JOIN.
#7. Filtre os filmes com film.rating = 'PG-13', usando WHERE.
#8. Ordene os títulos em ordem alfabética (ASC)
#select
 #    title as Titulo_filme,
  #   inventory.inventory_id as  identificador_filme,
   #  inventory.store_id as Informacao_loja
#from film
#inner join inventory on inventory.film_id = film.film_id
#inner join store on store.store_id = inventory.store_id
#where film.rating = "PG-13"
#order by Titulo_filme asc

#23)INNER JOIN + COUNT() + GROUP BY
#Usando o banco Sakila:
#Objetivo: descobrir quantos itens de inventário existem para cada filme.
#Requisitos
#1. Selecione film.title.
#2. Utilize COUNT() para contar os itens de inventário de cada filme.
#3. Crie o alias total_inventario.
#4. Relacione film com inventory usando film_id.
#5. Utilize INNER JOIN.
#6. Agrupe os resultados pelo título do filme usando GROUP BY.
#7. Ordene pelo total de inventário em ordem decrescente (DESC).
#select
 #    title as Titulo_filme,
  #   count(inventory.inventory_id) as total_inventario
#from film
#inner join inventory on inventory.film_id = film.film_id
#group by Titulo_filme
#order by total_inventario desc


#24)Usando o banco Sakila:
#Objetivo: descobrir quantos itens de inventário existem para cada filme com classificação PG-13.
#Requisitos
#1. Selecione film.title.
#2. Utilize COUNT() para contar os itens de inventário de cada filme.
#3. Crie o alias total_inventario.
#4. Relacione film com inventory usando film_id.
#5. Utilize INNER JOIN.
#6. Filtre somente os filmes com classificação PG-13, usando WHERE.
#7. Agrupe os resultados pelo título do filme usando GROUP BY.
#8. Ordene pelo total de inventário em ordem decrescente (DESC)
#select
 #    title as Titulo_filme,
	# count(inventory.inventory_id) as total_inventario
#from film
#inner join inventory on inventory.film_id = film.film_id
#where film.rating = "PG-13"
#group by Titulo_filme
#order by total_inventario desc

#25)INNER JOIN + COUNT() + GROUP BY + HAVING
#Usando o banco Sakila:
#Objetivo: encontrar os filmes que possuem mais de 3 itens cadastrados no inventário.
#Requisitos
#1. Selecione film.title.
#2. Utilize COUNT() para contar os itens de inventário de cada filme.
#3. Crie o alias total_inventario.
#4. Relacione film com inventory usando film_id.
#5. Utilize INNER JOIN.
#6. Agrupe os resultados pelo título do filme usando GROUP BY.
#7. Utilize HAVING para mostrar somente os filmes com mais de 3 itens no inventário.
#8. Ordene pelo total de inventário em ordem decrescente (DESC).
#select
#	   title as Titulo_filme,
#	   count(inventory.inventory_id) as total_inventario
#from film
#inner join inventory on inventory.film_id = film.film_id
#group by Titulo_filme
#having total_inventario > 3
#order by total_inventario desc

