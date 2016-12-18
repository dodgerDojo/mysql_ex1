SELECT 
    first_name, last_name
FROM
    film,
    film_actor,
    actor,
    film_category,
    category
WHERE
    film.film_id = film_actor.film_id
        AND film_actor.actor_id = actor.actor_id
        AND film_category.film_id = film.film_id
        AND category.category_id = film_category.category_id
GROUP BY first_name , last_name
HAVING COUNT(DISTINCT name) = (SELECT DISTINCT
        COUNT(*) AS counter
    FROM
        category)
