-- find the category name of all inventory items that have never been rented
-- Similar to exercise 9 with an additonal joins

-- 
-- add two new joins: film to film category to category
SELECT category.name FROM category
INNER JOIN film_category ON film_category.category_id = category.category_id
INNER JOIN film on film.film_id = film_category.film_id
INNER JOIN inventory ON inventory.film_id = film.film_id
LEFT JOIN rental ON rental.inventory_id = inventory.inventory_id
WHERE rental.rental_date IS NULL
