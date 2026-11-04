#CRIANDO UMA VIEW
create view vendas_cliente as
select 
      customer.customer_id as ID,
      customer.first_name as Nome,
      customer.last_name as sobrenome,
      payment.amount as valor_pagor
from customer
join payment
     on payment.customer_id = customer.customer_id


      