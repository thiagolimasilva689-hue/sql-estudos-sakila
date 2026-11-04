#Exercício 1: Todos os produtos
#select * from produtos

#Exercício 2: Produtos caros
#Pergunta: Liste nome e preço dos produtos que custam mais de 100 reais.
#select nome,preco from produtos where preco >= 100


#Exercício 3: Ordenar por preço
#Pergunta: Liste nome e preço de todos os produtos, do mais caro para o mais barato.
#select nome,preco from produtos  order by preco desc

#Exercício 4: Quantidade total por categoria
#Pergunta: Quantos produtos existem em cada categoria?
#select count(*) as quantidade_produto from produtos

#Exercício 5: Preço médio por categoria
#Pergunta: Qual o preço médio dos produtos por categoria?
#select 
 #      categoria, 
  #     avg(preco) as preco_medio
#from produtos
#group by categoria

#xercício 6: Categorias com poucos itens
#Pergunta: Liste categorias que têm menos de 100 itens no total.
#select categoria,quantidade from produtos where quantidade in (select  quantidade from produtos where quantidade < 100) 

#Exercício 7: O mais barato de cada categoria
#Pergunta: Qual o preço mínimo de produto em cada categoria?
select 
      categoria,
      min(preco)
from produtos
group by categoria