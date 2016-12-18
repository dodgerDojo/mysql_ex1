SELECT DISTINCT
    first_name, last_name
FROM
    film,
    film_actor,
    actor
WHERE
    film.title = 'APACHE DIVINE'
        AND film.film_id = film_actor.film_id
        AND film_actor.actor_id = actor.actor_id
ORDER BY last_name ASC , first_name ASC