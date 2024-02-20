/*
 * Use a JOIN to display the total amount rung up by each staff member in January of 2020.
 * Use tables staff and payment.
 */
select a.first_name as first_name, a.last_name as last_name, sum(b.amount) as sum
from staff a
left join payment b on a.staff_id=b.staff_id
WHERE payment_date >= '2020-01-01' AND payment_date < '2020-02-01'
GROUP BY first_name, last_name
ORDER BY a.first_name;
