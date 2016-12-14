# returns the distiricts with more than 8 customers.
# assumed 'join' equals to 'from' condition. (2 tables in 'from' == 2 'joins')

SELECT 
    district, COUNT(DISTINCT first_name) AS counter
FROM
    payment,
    customer,
    address
WHERE
    payment.customer_id = customer.customer_id
        AND customer.address_id = address.address_id
GROUP BY district
HAVING counter > 8