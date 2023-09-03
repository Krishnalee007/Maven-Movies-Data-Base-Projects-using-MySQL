/* 
We would like to better understand what your customer base looks like. Please provide a list of all customer 
identification values, with a count of rentals they have made all-time, with your highest volume customers at 
the top of the list.
*/
-- customer identification values!!!!

SELECT
	customer_id,
    COUNT(rental_id) as number_of_rentals
FROM rental
GROUP BY customer_id
Order by number_of_rentals DESC

-- here we can write order by number_of_renals or order by count(rental_id) , both are same as we mention as 'AS'