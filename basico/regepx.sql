#Operador regexp é como o limit, só mais avançado e abrangenete sem precisar de '%' e usar também '^' para iniciar
select * from actor where first_name regexp '^a|^d'