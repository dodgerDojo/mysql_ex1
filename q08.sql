SELECT DISTINCT
    customer1.first_name, customer1.last_name
FROM
    customer AS customer1,
    customer AS customer2
WHERE
    customer1.first_name = customer2.first_name
        AND customer1.last_name != customer2.last_name
GROUP BY last_name
ORDER BY first_name