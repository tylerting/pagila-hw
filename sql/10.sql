/*
 * Use a JOIN to list each film and the number of actors who are listed for that film.
 * Use tables film and film_actor.
 */
select film.title as title, film_actor.film_id as film_id, count(actor_id) as actor_count
from film_actor 
left join film on film.film_id = film_actor.film_id
group by film.title, film_actor.film_id
order by actor_count, film.title;
