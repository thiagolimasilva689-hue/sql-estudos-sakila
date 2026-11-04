#Exercício 1 — INNER JOIN básico
#👉 Liste o nome do cliente e o endereço dele
#💡 Tabelas:
#customer
#address
select 
    cus.first_name,
    cus.last_name,
    adr.address
    from customer cus
join address adr on cus.customer_id = adr.address;



          