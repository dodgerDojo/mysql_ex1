SELECT 
    first_name, last_name, COUNT(*) AS counter
FROM
    film,
    film_actor,
    actor
WHERE
    film.rating = 'PG'
        AND film.film_id = film_actor.film_id
        AND film_actor.actor_id = actor.actor_id
GROUP BY last_name , first_name
HAVING counter > 10 AND counter < 20
ORDER BY counter DESC , last_name , first_name