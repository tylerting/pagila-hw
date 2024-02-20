/*
 * Use a JOIN to display the first and last names, as well as the address, of each staff member.
 * Use the tables staff and address.
 * Order by last name.
 */
select a.first_name as first_name, a.last_name as last_name, b.address as street_address
from staff as a
left join address as b on a.address_id = b.address_id
ORDER BY a.last_name;

