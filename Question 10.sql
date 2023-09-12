select distinct
	inventory.inventory_id,
	inventory.store_id,
    film.title,
    film.rating,
    film.rental_rate,
    film.replacement_cost
FROM inventory
LEFT JOIN film
	ON inventory.film_id=film.film_id
    