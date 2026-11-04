#Em SQL, aUSING cláusula WHERE é uma forma abreviada de unir tabelas quando as colunas que você está comparando têm o mesmo nome em ambas as tabelas. 
#Ela serve como uma alternativa mais concisa à ONcláusula WHERE, que é mais verbosa

select 
       cus.customer_id as ID,
       cus.first_name as Nome,
       cus.last_name as Sobrenome,
      sum(amount) as Total
from payment pay
join customer cus using(customer_id)
group by customer_id
order by total desc;
      
      