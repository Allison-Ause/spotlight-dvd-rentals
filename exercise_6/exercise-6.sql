-- find all film titles rented out by customers with the first_name Roberta
-- Similar to exercise 5

-- film, inventory, rental, customer, 

SELECT film.title from film
LEFT JOIN inventory ON film.film_id = inventory.film_id
LEFT JOIN rental ON rental.inventory_id = inventory.inventory_id
LEFT JOIN customer on rental.customer_id = customer.customer_id
WHERE customer.first_name = 'Roberta'