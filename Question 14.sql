use mavenmovies;
select 
	customer.first_name,
    customer.last_name,
    count(rental.rental_id) as total_no_of_rentals,
    sum(payment.amount) as total_payment
from customer	
	left join rental
		on customer.customer_id=rental.customer_id
	left join payment
		on rental.rental_id=payment.rental_id
group by customer.first_name, customer.last_name
order by count(rental.rental_id) desc
    
	