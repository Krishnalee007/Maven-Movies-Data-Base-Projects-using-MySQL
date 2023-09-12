use mavenmovies;
select
	film.rating,
    count(inventory.inventory_id) as inventory_items,
    inventory.store_id
from film
left join inventory
	on film.film_id=inventory.film_id
group by film.rating, inventory.store_id