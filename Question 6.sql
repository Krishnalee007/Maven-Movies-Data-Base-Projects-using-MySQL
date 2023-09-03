/*
We would like to understand the replacement cost of your films. Please provide the replacement cost for the 
film that is least expensive to replace, the most expensive to replace, and the average of all films you carry. 
*/

SELECT
	title,
    CASE
		when replacement_cost<=10 then 'least_expensive to replace'
        when replacement_cost BETWEEN 10 and 15 then 'average cost to replace'
        else 'most expensive to replace'
	end as replacement_cost
from film;

-- simple code from teaching
/*"""" they are asking cost ..cost..not about which movie least replacement cost, the above you did is 
categorised , least and most expensive for replacement costs. The below is perfect answer for the question!!!!
""""
*/

SELECT 
	MIN(replacement_cost) as least_expensive,
    MAX(replacement_cost) as most_expensive,
    AVG(replacement_cost) as average_replacement_cost
FROM film