#1)Liste todos os livros com nome do autor
#select
 #    autores.nome,
  #   livros.titulo,
   #  livros.ano_publicacao
#from autores
#join livros
 #   on autores.id = livros.id_autor
 
#2)Liste os livros mais caros (preço > 50)
#select * from livros where preco > 50

#3)quantos livros por autor
#select
 #     autores.nome as nome,
  #    count(id_autor) as Livro_autor
#from autores
#join livros
 #   on autores.id = livros.id_autor
#group by autores.nome

#4)Liste os autores que nasceram antes de 1950
#select * from autores where ano_nascimento < 1950;

#5. Mostre o preço médio dos livros
select avg(preco) as preco_medio from livros