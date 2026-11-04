#Exercício 1 (DISTINCT + ORDER BY)
# Liste todos os tipos de classificação (rating) dos filmes, sem repetir.
#Use DISTINCT
#Ordene em ordem alfabética
#select distinct rating  from film   order by rating asc;

#Exercício 2 (IN)
# Mostre todos os filmes que têm classificação:
#'PG'
#'PG-13'
#select * from  film  where rating in ('PG','PG-13');

#Exercício 3 (BETWEEN)
# Mostre todos os filmes com duração entre:
#90 e 120 minutos
#select * from  film  where length between 90 and 120 ;

# Exercício 4 (AND + OR + NOT) (nível mais importante 🔥)
select * from  film where length > 100 and (rating = 'PG' or 'G') and not rating = 'PG-13';



