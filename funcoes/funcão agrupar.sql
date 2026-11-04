# O comando GROUP BY grupos de linhas que possuem valores idênticos em colunas específicas. 
#Ele é usado em conjunto com funções de agregação (como SUM, COUNT, AVG, MAXe MIN
select 
      customer_id,
      sum(amount) as total
from payment
group by customer_id
order by total desc;
      
      