use mavenmovies;
SELECT
	staff.first_name,
    staff.last_name,
    address.address,
    address.district,
    city.city,
    country.country
FROM staff
LEFT JOIN address ON staff.address_id=address.address_id
LEFT JOIN city ON address.city_id=city.city_id
LEFT JOIN country ON city.country_id=country.country_id
