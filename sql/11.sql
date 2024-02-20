/* 
 * Use a JOIN to list the number of copies of each film in the inventory system that begins with the letter h.
 * Use tables inventory and film.
 * Order by film title alphabetically.
 */
SELECT
film.film_id AS film_id,
film.title AS title,
count(inventory.inventory_id) AS count
FROM inventory
LEFT JOIN film ON inventory.film_id = film.film_id
WHERE film.title ILIKE 'h%'
GROUP BY film.film_id, film.title
ORDER By film.title DESC;
