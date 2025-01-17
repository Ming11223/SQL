--update price
UPDATE inventories
set price=19.99
WHERE product_id=123;

--update all price with 10%
UPDATE inventories
set price=price*1.10;