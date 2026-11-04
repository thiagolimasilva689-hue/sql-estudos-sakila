use sakila;
select * from payment
 where amount =
(
select max(amount) from payment where customer_id = 1)
# ESSA SUBQUERY MOSTRAR QUANTIAS/CLIEMNTES QUE SÃO MAIORES QUE customer_id = 1