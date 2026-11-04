use sakila;
#select * from payment where staff_id = 1 and amount = 0.99 and customer_id <  10; percebá ele vai buscar os valores se ambós forem verdadeiros
#select * from payment where staff_id = 1 or amount = 0.99 or customer_id <  10; percebá ele vai buscar os valores se apenar umas condições  forem verdadeiros
#select * from payment where   not staff_id = 1 and amount = 0.99 and customer_id <  10; ele negar os valores dessa coluna
