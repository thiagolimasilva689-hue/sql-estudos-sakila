#use sakila;
#1)Listar filmes por duração
#Use a tabela film, que contém informações sobre os filmes.
#Escreva uma consulta SQL que:
#1. Mostre as colunas title e length.
#2. Selecione somente os filmes com duração maior que 120 minutos.
#3. Ordene os resultados da maior para a menor duração.
#Regras: use SELECT, FROM, WHERE e ORDER BY.
#select title,length from film where length> 120 order by length desc;


#2)Contar filmes por classificação
#Na tabela film, existe a coluna rating, que indica a classificação indicativa do filme, como G, PG, PG-13 e R.
#Escreva uma consulta que:
#1. Mostre a classificação (rating).
#2. Conte quantos filmes existem em cada classificação.
#3. Dê à contagem o nome total_filmes.
#4. Ordene da maior quantidade para a menor.
#Dica: você vai precisar de COUNT(*), GROUP BY e ORDER BY.
#Não precisa usar WHERE neste exercício.
#select
 #     rating as classificacao,
  #    count(film_id) as total_filmes
#from film
#group by classificacao
#order by  total_filmes desc


#3)Classificações com muitos filmes
#Use a tabela film do Sakila.
#Escreva uma consulta que:
#1. Agrupe os filmes pela coluna rating.
#2. Conte os filmes de cada classificação e chame a contagem de total_filmes.
#3. Mostre somente as classificações que possuem mais de 200 filmes.
#4. Ordene pela quantidade de filmes, da maior para a menor.
#Você precisará de COUNT(*), GROUP BY, HAVING e ORDER BY.
#select
 #     rating as classificacao,
  #    count(film_id) as total_filmes
#from film
#group by classificacao
#having total_filmes>200
#order by  total_filmes desc


#4)Listar filmes e seus idiomas
#No banco Sakila, use as tabelas film e language.
#- A tabela film possui title e language_id.
#- A tabela language possui language_id e name.
#Escreva uma consulta que:
#1. Mostre o título do filme, com o alias titulo.
#2. Mostre o nome do idioma, com o alias idioma.
#3. Combine as tabelas usando INNER JOIN.
#4. Ordene os resultados pelo título em ordem alfabética.
#Dica: a coluna language_id existe nas duas tabelas e permite relacioná-las.
#select
 #      title as Titulo_Filme,
  #     language.name as idioma
#from film
#inner join language on language.language_id = film.language_id
#order by title asc

# 5) Contar quantos filmes existem em cada idioma
#Use as tabelas film e language.
#Escreva uma consulta que:
#1. Mostre o nome do idioma como idioma.
#2. Conte quantos filmes estão associados a cada idioma, usando o alias total_filmes.
#3. Relacione as tabelas com INNER JOIN.
#4. Agrupe pelo nome do idioma.
#5. Ordene do idioma com mais filmes para o com menos filmes.
#Dica: você precisará combinar INNER JOIN, COUNT(*), GROUP BY e ORDER BY.
select
      language.name as idioma,
      count(film_id) as total_filmes
from film
inner join language on language.language_id = film.language_id
group by language.name
order by total_filmes desc




     
      
      