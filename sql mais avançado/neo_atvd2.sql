#26)INNER JOIN + WHERE + COUNT() + GROUP BY + HAVING
#Usando o banco Sakila:
#Objetivo: encontrar filmes com classificação PG-13 que possuem mais de 2 itens cadastrados no inventário.
#Requisitos
#1. Selecione film.title.
#2. Utilize COUNT() para contar os itens de inventário de cada filme.
#3. Crie o alias total_inventario.
#4. Relacione film com inventory usando film_id.
#5. Utilize INNER JOIN.
#6. Filtre os filmes com classificação PG-13 usando WHERE.
#7. Agrupe os resultados pelo título do filme usando GROUP BY.
#8. Utilize HAVING para mostrar somente filmes com mais de 2 itens no inventário.
#9. Ordene pelo total de inventário em ordem decrescente (DESC).

#select
 #    title as Titulo_filme,
  #   count(inventory.inventory_id) as  total_inventario
#from film
#inner join inventory on inventory.film_id = film.film_id
#where film.rating = "PG-13"
#group by Titulo_filme
#having total_inventario > 2
#order by total_inventario desc

#27)LEFT JOIN
#Selecione film.title.
#Selecione inventory.inventory_id.
#Utilize film como tabela principal.
#Relacione film com inventory usando film_id.
#Utilize LEFT JOIN.
#Ordene os títulos em ordem alfabética (ASC).
#select
 #     title as Titulo_filme,
  #    inventory.inventory_id as Identificador_filme
#from film
#left join inventory on inventory.film_id = film.film_id
#order by Titulo_filme asc

#28)LEFT JOIN + WHERE + IS NULL
#Usando o banco Sakila:
#Objetivo: encontrar todos os filmes que não possuem nenhum item cadastrado no inventário.
#Requisitos
#1. Selecione film.title.
#2. Selecione inventory.inventory_id.
#3. Utilize film como tabela principal.
#4. Relacione film com inventory usando film_id.
#5. Utilize LEFT JOIN.
#6. Utilize WHERE para encontrar registros em que inventory.inventory_id seja NULL.
#7. Ordene os títulos em ordem alfabética (ASC).
#select
 #       title as Titulo_filme,
  #      inventory.inventory_id as Identificador_filme
#from film
#left join inventory on inventory.film_id = film.film_id
#where inventory.inventory_id is null
#order by Titulo_filme asc

#29)LEFT JOIN + COUNT() + GROUP BY
#Usando o banco Sakila:
#Objetivo: descobrir quantos itens de inventário cada filme possui, incluindo aqueles que não possuem nenhum item cadastrado.
#Requisitos
#1. Selecione film.title.
#2. Utilize COUNT() para contar os itens de inventário de cada filme.
#3. Crie o alias total_inventario.
#4. Utilize film como tabela principal.
#5. Relacione film com inventory usando film_id.
#6. Utilize LEFT JOIN.
#7. Agrupe os resultados pelo título do filme usando GROUP BY.
#8. Ordene pelo total de inventário em ordem decrescente (DESC)
#select
 #    title as Titulo_filme,
  #   count(inventory.inventory_id) as  total_inventario
#from film
#left join inventory on inventory.film_id = film.film_id
#group by Titulo_filme
#order by total_inventario desc

#29)Usando o banco Sakila:
#Objetivo: encontrar os filmes que possuem pelo menos 3 itens cadastrados no inventário, mantendo a contagem individual de cada filme.
#Requisitos
#1. Selecione film.title.
#2. Utilize COUNT() para contar os itens de inventário de cada filme.
#3. Crie o alias total_inventario.
#4. Utilize film como tabela principal.
#5. Relacione film com inventory usando film_id.
#6. Utilize LEFT JOIN.
#7. Agrupe os resultados pelo título do filme usando GROUP BY.
#8. Utilize HAVING para mostrar somente filmes com pelo menos 3 itens no inventário.
#9. Ordene pelo total de inventário em ordem decrescente (DESC).
#select
 #    title as Titulo_filme,
  #   count(inventory.inventory_id) as  total_inventario
#from film
#left join inventory on inventory.film_id = film.film_id
#group by Titulo_filme
#having total_inventario >=3
#order by total_inventario desc

#31)LEFT JOIN + WHERE + IS NULL + COUNT()
#Usando o banco Sakila:
#Objetivo: identificar quantos filmes não possuem nenhum item cadastrado no inventário.
#Requisitos
#1. Selecione film.title.
#2. Utilize COUNT() para contar os itens de inventário.
#3. Crie o alias total_inventario.
#4. Utilize film como tabela principal.
#5. Relacione film com inventory usando film_id.
#6. Utilize LEFT JOIN.
#7. Utilize WHERE para encontrar registros em que inventory.inventory_id IS NULL.
#8. Agrupe os resultados pelo título do filme usando GROUP BY.
#9. Ordene os títulos em ordem alfabética (ASC).
#select
 #    title as Titulo_filme,
  #   count(inventory.inventory_id) as  total_inventario
#from film
#left join inventory on inventory.film_id = film.film_id
#where inventory.inventory_id IS NULL
#group by Titulo_filme
#order by Titulo_filme asc

#32)LEFT JOIN + COUNT() + GROUP BY + HAVING
#Banco: Sakila
#Objetivo: identificar os filmes que possuem menos de 3 itens cadastrados no inventário, incluindo aqueles que não possuem nenhum.
#Requisitos:
#1. Selecione film.title.
#2. Utilize COUNT() para contar os itens do inventário.
#3. Crie o alias total_inventario.
#4. Utilize film como tabela principal.
#5. Relacione film com inventory usando film_id.
#6. Utilize LEFT JOIN.
#7. Agrupe os resultados pelo título do filme usando GROUP BY.
#8. Utilize HAVING para retornar somente filmes com menos de 3 itens.
#9. Ordene pelo título em ordem alfabética (ASC).
#select
 #    title as Titulo_filme,
  #  count(inventory.inventory_id) as  total_inventario
#from film
#left join inventory on inventory.film_id = film.film_id
#group by Titulo_filme
#having total_inventario < 3
#order by Titulo_filme asc

#33)LEFT JOIN + COUNT() + HAVING + múltiplas condições
#Banco: Sakila
#Objetivo: identificar filmes com pelo menos 5 itens no inventário e classificação PG-13.
#Requisitos:
#1. Selecione film.title.
#2. Selecione film.rating.
#3. Utilize COUNT() para contar os itens do inventário.
#4. Crie o alias total_inventario.
#5. Utilize film como tabela principal.
#6. Relacione film com inventory usando film_id.
#7. Utilize LEFT JOIN.
#8. Utilize WHERE para selecionar somente filmes com classificação PG-13.
#9. Agrupe por título e classificação.
#10. Utilize HAVING para retornar somente filmes com pelo menos 5 itens.
#11. Ordene pela quantidade de itens em ordem decrescente.
#select
 #     title as Titulo_filme,
  #    rating as classificao_filme,
   #   count(inventory.inventory_id) as  total_inventario
#from film
#left join inventory on inventory.film_id = film.film_id
#where rating = "PG-13"
#group by Titulo_filme,classificao_filme
#having total_inventario >= 5
#order by total_inventario desc

#34)LEFT JOIN + SUM() + GROUP BY + HAVING
#Banco: Sakila
#Objetivo: identificar os filmes cujo valor total de reposição em inventário seja superior a 100.
#Requisitos:
#1. Selecione film.title.
#2. Selecione film.replacement_cost.
#3. Utilize SUM() para somar o custo de reposição dos itens do inventário.
#4. Crie o alias valor_total_reposicao.
#5. Utilize film como tabela principal.
#6. Relacione film com inventory usando film_id.
#7. Utilize LEFT JOIN.
#8. Agrupe por título e custo de reposição.
#9. Utilize HAVING para retornar somente valores totais superiores a 100.
#10. Ordene pelo valor total de reposição em ordem decrescente.
#Atenção: neste exercício, vamos trabalhar com SUM() em vez de COUNT()
#select 
 #     title as Titulo_filme,
  #    replacement_cost as custo_reposição,
   #   sum(film.replacement_cost) as valor_total_reposicao
#from film
#left join inventory on inventory.film_id = film.film_id
#group by Titulo_filme,custo_reposição
#having valor_total_reposicao > 100
#order by valor_total_reposicao desc

#35)— LEFT JOIN + SUM() + COUNT() + GROUP BY + HAVING
#Banco: Sakila
#Objetivo: identificar filmes da classificação PG-13 que possuem pelo menos 3 unidades no inventário e cujo custo total de reposição seja superior a 100.
#Requisitos:
#1. Selecione film.title.
#2. Selecione film.rating.
#3. Utilize COUNT() para contar as unidades do inventário.
#4. Crie o alias total_inventario.
#5. Utilize SUM() para somar os custos de reposição das unidades.
#6. Crie o alias valor_total_reposicao.
#7. Utilize film como tabela principal.
#8. Relacione film com inventory usando film_id.
#9. Utilize LEFT JOIN.
#10. Utilize WHERE para selecionar somente filmes com classificação PG-13.
#11. Agrupe por título e classificação.
#12. Utilize HAVING para exigir pelo menos 3 unidades e custo total superior a 100.
#13. Ordene pelo custo total de reposição em ordem decrescente.
select
      title as Titulo_filme,
      rating as classificao_filme,
      count(inventory.inventory_id) as  total_inventario,
      sum(film.replacement_cost) as valor_total_reposicao
from film
left join inventory on inventory.film_id = film.film_id
where rating = 'PG-13'
group by Titulo_filme,classificao_filme
having total_inventario >=3 and valor_total_reposicao > 100
order by valor_total_reposicao desc

