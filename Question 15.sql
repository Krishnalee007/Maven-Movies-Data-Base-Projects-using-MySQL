use mavenmovies;
select
	'advisor' as type,
    first_name,
    last_name,
    null
    -- if null is not there, bother tables have different columns - cannot be merged together, so null is used
from advisor
union
select
	'investor' as type,
    first_name,
    last_name,
    company_name
from investor