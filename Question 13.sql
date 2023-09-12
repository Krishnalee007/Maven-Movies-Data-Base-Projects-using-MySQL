use mavenmovies;
select
	customer.first_name,
    customer.last_name,
    customer.store_id,
    customer.active,
    address.address,
    address.district,
    city.city,
    country.country
from customer
left join address
	on customer.address_id=address.address_id
left join city
	on address.city_id=city.city_id
left join country
	on city.country_id=country.country_id