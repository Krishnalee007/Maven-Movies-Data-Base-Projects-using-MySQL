-- We will need a count of active customers for each of your stores. Separately, please. 

SELECT
	store_id,
    COUNT(customer_id) as active_customers
FROM customer
WHERE active=1
GROUP BY store_id
