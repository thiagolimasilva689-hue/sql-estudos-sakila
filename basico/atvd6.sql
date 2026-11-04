SELECT 
    customer.first_name,
    COUNT(*) as total_alugueis
FROM customer
JOIN rental
    ON customer.customer_id = rental.customer_id
GROUP BY customer.first_name
order by total_alugueis desc;