SELECT 
    customer.first_name,
    COUNT(*)
FROM customer
JOIN rental
    ON customer.customer_id = rental.customer_id
GROUP BY customer.first_name;