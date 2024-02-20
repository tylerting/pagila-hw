/*
 * Use a JOIN to order the films by most profitable,
 * where the profit is the total amount that customer have payer for the film.
 * Use tables payment, rental, inventory, and film. 
 */
SELECT film.title AS title, sum(payment.amount) AS profit
FROM payment
LEFT JOIN rental ON payment.rental_id = rental.rental_id
LEFT JOIN inventory ON rental.inventory_id = inventory.inventory_id
LEFT JOIN film ON inventory.film_id = film.film_id
GROUP BY film.title
ORDER BY sum(payment.amount) DESC;
