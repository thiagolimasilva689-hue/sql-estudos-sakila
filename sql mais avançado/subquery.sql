use sakila;
 #mostras tudo os amount maiores que 5.99
#select * from payment
#where amount > 5.99
#essas são unicas query

# A MEDIA DE AMOUNT
#select avg(amount) from payment

#SUBQUERY É EXATAMENTE
select * from payment
where amount > (select avg(amount) from payment)
#é uma query dentro de outra