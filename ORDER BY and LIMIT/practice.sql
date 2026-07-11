-- Show latest suppliers of one store.
SELECT * 
FROM suppliers
WHERE store_id = ?
ORDER BY  created_at DESC;

-- ---------------------------------------------------------------------------------

-- Show latest products of one store.  (--)

SELECT *
FROM products 
WHERE store_id = ?
ORDER BY created_at DESC;
-- ---------------------------------------------------------------------------------

-- Show the 5 newest products of one store.

SELECT *
FROM products
WHERE store_id = ?
ORDER BY created_at DESC, id DESC
LIMIT 5;

-- ---------------------------------------------------------------------------------
-- Show the 10 most expensive products of one store.
SELECT * 
FROM products
WHERE store_id = ?
ORDER BY price DESC,id DESC
LIMIT 10;

-- ---------------------------------------------------------------------------------
-- Show the cheapest product of one store.
SELECT * 
FROM products
WHERE store_id = ?
ORDER BY price ASC, id ASC
LIMIT 1;

-- ---------------------------------------------------------------------------------
-- Show oldest suppliers of one store.
SELECT *
FROM suppliers
WHERE store_id = ?
ORDER BY created_at ASC,name ASC;

-- ---------------------------------------------------------------------------------
-- Show first 10 suppliers of one store based on name alphabetically.
SELECT *
FROM suppliers
WHere store_id = ?
ORDER BY name IS NULL ASC, name ASC
LIMiT 10;
-- ---------------------------------------------------------------------------------
-- Show latest 3 active products of one store.
SELECT *
FROM products
WHERE store_id = ?
AND is_active = true
ORDER BY created_at DESC, id DESC
LIMIT 3;

-- ---------------------------------------------------------------------------------
-- Show top 5 products with highest stock quantity of one store.

SELECT * FROM products
WHERE store_id = ?
ORDER BY stock_quantity DESC, id DESC
LIMIT 5;