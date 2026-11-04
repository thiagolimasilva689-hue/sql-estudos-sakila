#1) — Consultando filmes
#Nível fácil
#Vamos trabalhar com a tabela film.
#Colunas úteis: film_id, title, description, release_year, rental_rate, length e rating.
#Sua missão:
#Escreva uma consulta SQL que:
#1. Selecione o título (title) e o preço de aluguel (rental_rate).
#2. Consulte a tabela film.
#3. Retorne somente os filmes cujo preço de aluguel seja maior que 3.00.
#4. Ordene os resultados pelo preço de aluguel, do maior para o menor.
#Dica: você precisará de SELECT, FROM, WHERE e ORDER BY.
#select title,rental_rate from film where rental_rate >  3.00 order by rental_rate desc

# 2) — Filmes por classificação
#Nível fácil
# Tabela: film

#Sua missão é escrever uma consulta SQL que:
#1. Selecione title, rating e length.
#2. Consulte a tabela film.
#3. Retorne somente os filmes com classificação PG-13.
#4. Ordene os resultados pela duração (length), da maior para a menor.
#Dica: você precisará de SELECT, FROM, WHERE e ORDER BY.
#select title, rating,length from film
#where rating = "PG-13" order by length desc

#Exercício 3 — Filmes por preço e duração
#Nível fácil → intermediário
#Tabela: film
#Sua missão é escrever uma consulta SQL que:
#1. Selecione title, rental_rate e length.
#2. Consulte a tabela film.
#3. Retorne somente os filmes cujo aluguel seja maior que 2.00 e cuja duração seja superior a 100 minutos.
#4. Ordene os resultados pelo preço de aluguel, do maior para o menor.
#select  title, rental_rate,length from film
#where rental_rate > 2.00 and length > 100 ORDER BY rental_rate DESC

#4) — Filmes por classificação
#Nível intermediário inicial
# Tabela: film
#Sua missão é escrever uma consulta SQL que:
#1. Selecione title, rating e rental_rate.
#2. Consulte a tabela film.
#3. Retorne somente os filmes cuja classificação seja 'G' ou 'PG-13'.
#4. Ordene os resultados pelo título em ordem alfabética (A–Z).
#select  title, rating,rental_rate from film
#where rating = "G" or rating = 'PG-13' order by title asc

#5)Filmes com classificações específicas
#Nível intermediário inicial
#Tabela: film
#Sua missão é escrever uma consulta SQL que:
#1. Selecione title, rating e rental_rate.
#2. Consulte a tabela film.
#3. Retorne somente os filmes com classificação 'G', 'PG' ou 'PG-13'.
#4. Ordene os resultados pelo preço de aluguel, do menor para o maior.
#select title, rating,rental_rate from film
#where rating in ( 'G', 'PG','PG-13') order by rental_rate asc

#6 — BETWEEN
#Usando a tabela film do banco Sakila:
#Objetivo: selecionar os filmes cuja rental_rate esteja entre 2.00 e 4.00.
#Requisitos:
#1. Exiba as colunas title, rental_rate e length.
#2. Filtre os registros usando BETWEEN.
#3. Ordene pelo rental_rate em ordem crescente (ASC)
#select title, rating,rental_rate from film
#where rental_rate between 2.00 and 4.00 ORDER BY rental_rate ASC;

# 7)LIKE! 
#Objetivo
#Na tabela film, encontre os filmes cujo título começa com a letra A.
#Requisitos:
#1. Exiba as colunas title e rental_rate.
#2. Use LIKE para filtrar os títulos que começam com A.
#3. Ordene os resultados pelo título em ordem alfabética (ASC).
#select title,rental_rate from film where  title like "A%" order by title asc


#8)COUNT() e GROUP BY
#Usando a tabela film do banco Sakila:
#Objetivo: descobrir quantos filmes existem em cada classificação indicativa (rating).
#Requisitos:
#1. Exiba a coluna rating.
#2. Conte quantos filmes existem em cada classificação, usando COUNT().
#3. Dê ao resultado da contagem o apelido total_filmes.
#4. Agrupe os resultados por rating, usando GROUP BY.
#5. Ordene pela quantidade de filmes em ordem decrescente (DESC).
#Dica: GROUP BY agrupa registros que possuem o mesmo valor em uma coluna.
#select rating, count(rating)  AS total_filmes from film group by rating order by count(rating)  desc

# 9) SUM() e AVG()
#Usando a tabela film do banco Sakila:
#Objetivo: calcular o valor total e a média dos preços de aluguel (rental_rate) dos filmes.
#Requisitos:
#1. Calcule a soma de rental_rate usando SUM().
#2. Calcule a média de rental_rate usando AVG().
#3. Dê os apelidos soma_aluguel e media_aluguel aos resultados.
#4. Não precisa usar GROUP BY, pois queremos o resultado geral de todos os filmes.
#select
 #     sum(rental_rate) as Total_aluguel,
  #    avg(rental_rate) as Media_aluguel
#from film

#10)COUNT() + WHERE + GROUP BY
#Usando a tabela film do banco Sakila:
#Objetivo: descobrir quantos filmes existem em cada classificação indicativa, considerando apenas os filmes com duração superior a 100 minutos.
#Requisitos:
#1. Exiba a coluna rating.
#2. Conte os filmes usando COUNT(*).
#3. Dê à contagem o apelido total_filmes.
#4. Filtre os filmes com length > 100, usando WHERE.
#5. Agrupe por rating, usando GROUP BY.
#6. Ordene pela quantidade de filmes em ordem decrescente (DESC).
#select rating, COUNT(film_id) as total_filmes   from film WHERE length > 100 group by rating order by total_filmes desc

#11) MIN() e MAX()
#Usando a tabela film do banco Sakila:
#Objetivo: descobrir o menor e o maior preço de aluguel dos filmes.
#Requisitos:
#1. Exiba o menor valor de rental_rate usando MIN().
#2. Exiba o maior valor de rental_rate usando MAX().
#3. Dê os apelidos menor_aluguel e maior_aluguel aos resultados.
#4. Considere todos os filmes, sem utilizar WHERE ou GROUP BY.     
#select min(rental_rate) as Menor_valor, max(rental_rate) as Maior_valor  from film

# 12)AVG() + GROUP BY! 
#Agora vamos trabalhar com médias agrupadas por classificação.
#Objetivo
#Descobrir a duração média (length) dos filmes de cada classificação indicativa (rating).
#Requisitos:
#1. Exiba a coluna rating.
#2. Calcule a média de duração usando AVG(length).
#3. Dê à média o apelido duracao_media.
#4. Agrupe os resultados por rating, usando GROUP BY.
#5. Ordene pela duração média em ordem decrescente (DESC).
#select rating,  AVG(length) as  duracao_media from film group by rating order by duracao_media desc

#13)DISTINCT! 😄
#Agora vamos aprender a consultar valores únicos, eliminando as repetições dos resultados.
#Objetivo
#Descobrir quais classificações indicativas (rating) existem na tabela film do banco Sakila.
#Requisitos:
#1. Exiba somente a coluna rating.
#2. Utilize DISTINCT para eliminar valores repetidos.
#3. Ordene as classificações em ordem alfabética (ASC).
#select distinct rating from film order by rating asc

#14)LIMIT + ORDER BY! 😄
#Agora vamos aprender a limitar a quantidade de resultados retornados pelo banco de dados.
#Objetivo
#Encontrar os 10 filmes mais longos da tabela film do banco Sakila.
#Requisitos:
#1. Exiba as colunas title e length.
#2. Ordene os filmes pela duração (length) em ordem decrescente (DESC).
#3. Utilize LIMIT para retornar somente 10 filmes.
#Dica: LIMIT deve aparecer no final da consulta, depois de ORDER BY
#select title,length from film  ORDER BY length desc limit 10

#15)WHERE + ORDER BY + LIMIT
#Usando a tabela film do banco Sakila:
#Objetivo: encontrar os 5 filmes mais longos que possuem classificação indicativa PG-13.
#Requisitos:
#1. Exiba as colunas title, rating e length.
#2. Filtre somente os filmes com rating = 'PG-13', usando WHERE.
#3. Ordene pela duração (length) em ordem decrescente (DESC).
#4. Utilize LIMIT para retornar somente 5 filmes. 
#select  title, rating,length from film where rating = 'PG-13' order by length desc limit 5

#16 — CASE WHEN! 😄
#Agora você vai aprender a criar classificações automaticamente dentro de uma consulta SQL.
#Objetivo
#Classificar os filmes da tabela film de acordo com sua duração (length).
#Requisitos:
#1. Exiba as colunas title e length.
#2. Crie uma classificação usando CASE WHEN.
#3. Utilize estas regras:
#- Filmes com duração menor ou igual a 90 minutos: 'Curto'.
#- Filmes com duração entre 91 e 120 minutos: 'Médio'.
#- Filmes com duração superior a 120 minutos: 'Longo'.
#4. Dê à nova coluna o apelido categoria_duracao.
#5. Ordene pela duração em ordem crescente (ASC)
select title,length,
case 
    when length <= 90 then "Curto"
	WHEN  length >= 91 and length <=120 then "Médio"
    Else "Longo"
    end as categoria_duracao
from film order by length  asc
    