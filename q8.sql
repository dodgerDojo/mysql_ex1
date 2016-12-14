SELECT 
    first_name, last_name
FROM
    (SELECT 
        first_name, last_name, COUNT(*) AS last_counter
    FROM
        customer
    GROUP BY last_name
    HAVING last_counter = 1) AS T1
GROUP BY first_name
HAVING COUNT(*) > 1
