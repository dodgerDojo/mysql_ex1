SELECT DISTINCT
    rental_id, amount
FROM
    payment
WHERE
    amount > 11
ORDER BY amount , rental_id;