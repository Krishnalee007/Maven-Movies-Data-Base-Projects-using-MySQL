/*
 In order to assess the liability of a data breach, we will need you to provide a count of all customer email 
addresses stored in the database. 
*/
-- simple code :
/*
SELECT 
	COUNT(email) as EMAILS
FROM customer
*/

-- my code:

SELECT
	store_id,
    COUNT(email) as count_of_all_customer_emails
FROM customer
GROUP BY store_id
