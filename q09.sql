SELECT 
    first_name, last_name, MAX(total)
FROM
    (SELECT 
        first_name, last_name, SUM(amount) AS total
    FROM
        payment, customer
    WHERE
        payment.customer_id = customer.customer_id
    GROUP BY first_name , last_name
    ORDER BY total DESC) AS T