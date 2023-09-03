/* We are interested in how diverse your film offering is as a means of understanding how likely you are to 
keep customers engaged in the future. Please provide a count of unique film titles you have in inventory at 
each store and then provide a count of the unique categories of films you provide.
*/

SELECT
	store_id,
    COUNT(distinct film_id) as unique_films
FROM inventory
GROUP BY store_id;

SELECT 
	COUNT(distinct name) as unique_category
FROM category