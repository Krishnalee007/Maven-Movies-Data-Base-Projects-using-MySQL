/* We are interested in having you put payment monitoring systems and maximum payment processing 
restrictions in place in order to minimize the future risk of fraud by your staff. Please provide the average 
payment you process, as well as the maximum payment you have processed.
*/

SELECT 
	MIN(amount) as least_payment_processed,
    MAX(amount) as maximum_payment_processed,
    AVG(amount) as average_payment_processed
FROM payment