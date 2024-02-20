/*
 * Use a JOIN to list the total paid by each customer.
 * List the customers alphabetically by last name.
 * Use tables payment and customer.
 */
SELECT
customer.customer_id AS customer_id,
customer.first_name AS first_name,
customer.last_name AS last_name,
sum(payment.amount) AS sum
FROM payment
LEFT JOIN customer ON payment.customer_id = customer.customer_id
GROUP BY customer.customer_id, customer.first_name, customer.last_name
ORDER BY customer.last_name;
