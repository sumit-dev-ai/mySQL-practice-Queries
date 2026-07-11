
-- Show low stock products of one store.

SELECT * 
FROM products
WHERE store_id = ?
AND stock_quantity <= low_stock_threshold
ORDER BY stock_quantity ASC;

-- -------------------------------------------------
-- Show products whose selling price is greater than 1000.
SELECT * 
FROM products
WHERE selling_price > 1000
ORDER BY selling_price ASC, id ASC;

-- -------------------------------------------------
-- Show products whose stock quantity is 0.
SELECT *
FROM products
WHERE  stock_quantity = 0
ORDER BY stock_quantity ASC, id ASC;


-- -------------------------------------------------
-- Show products where selling price is between 100 and 500.
SELECT * 
FROM products
WHERE selling_price BETWEEN 100 and 500
ORDER BY selling_price ASC, id ASC;
-- -------------------------------------------------
-- Show products whose stock quantity is not equal to 0.

SELECT *
FROM products
WHERE  stock_quantity <> 0
ORDER BY stock_quantity ASC, id ASC;
-- -------------------------------------------------
-- -------------------------------------------------
-- -------------------------------------------------