select
     customer.first_name,
     address.address,
     city.city
from customer
join address
      on customer.address_id = address.address_id
join city
      on address.city_id = city.city_id;