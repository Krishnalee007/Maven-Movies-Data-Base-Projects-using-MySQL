use mavenmovies;
select
	inventory.store_id,
    category.name as film_category,
    count(film_category.film_id) as count_of_films,
    AVG(film.replacement_cost) as avg_replacement_cost,
    sum(film.replacement_cost) as total_replacement_cost
from inventory
left join film 
	on inventory.film_id=film.film_id
left join film_category
	on film.film_id=film_category.film_id
left join category
	on film_category.category_id=category.category_id
group by
	inventory.store_id,
    category.name