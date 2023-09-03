/* We will need separate counts of inventory items held at each of your two stores
*/
-- my lengthy code here :
/*
SELECT distinct
	store_id,
    COUNT(CASE WHEN Store_id=1 then inventory_id else null end) as count_of_inventory_1,
	COUNT(CASE WHEN Store_id=2 then inventory_id else null end) as count_of_inventory_2
FROM inventory
GROUP BY store_id
ORDER BY store_id
*/

-- simplified code here:

SELECT 
	store_id,
    COUNT(inventory_id) as inventory_items
FROM inventory
GROUP BY 
	store_id