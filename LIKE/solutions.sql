-- Search products by name.
SELECT *
FROM products 
WHERE name LIKE CONCAT("%" , ? , "%")
AND store_id = ?
ORDER BY name ASC
-- -------------------------------------------------------------
-- Search products by SKU.

Example user searches **"PRD"**.
SELECT *
FROM products
WHERE store_id = ?
AND sku LIKE CONCAT("%", ? , "%")
ORDER BY sku ASC;

-- -------------------------------------------------------------
-- Show products whose name starts with **"A"**.
SELECT *
FROM products
WHERE store_id = ?
AND name LIKE "A%"
ORDER BY name ASC;


-- -------------------------------------------------------------
-- Show products whose name contains **"oil"**.

SELECT *
FROM products
WHERE store_id = ?
AND name LIKE "%oil%"
ORDER BY name ASC;


-- -------------------------------------------------------------
-- Show products whose SKU starts with **"PRD"**.
SELECT *
FROM products
WHERE store_id = ?
AND sku LIKE CONCAT( "PRD" , "%")
ORDER BY sku ASC;


-- -------------------------------------------------------------
-- Show suppliers whose name contains **"traders"**.
SELECT *
FROM suppliers
WHERE store_id = ?
AND name LIKE CONCAT("%", "traders" , "%")
ORDER BY name ASC;


-- -------------------------------------------------------------
-- -------------------------------------------------------------
-- Search suppliers by name or phone.

SELECT *
FROM suppliers 
WHERE store_id = ?
AND (
  name LIKE CONCAT("%", ? , "%")
  OR phone LIKE CONCAT("%", ? , "%")
)
ORDER BY name ASC, phone ASC;



-- -------------------------------------------------------------
-- Show suppliers whose email ends with **"gmail.com"**.
SELECT *
FROM suppliers
WHERE store_id = ?
AND email LIKE CONCAT("%", "gmail.com")
ORDER BY email ASC;


-- -------------------------------------------------------------
-- -------------------------------------------------------------
-- Show products whose name contains search text and are active.

-- Use **store_id**, **name**, and **is_active**.

SELECT *
FROM products
WHERE store_id = ?
AND name LIKE CONCAT("%",?,"%")
AND is_active = true
ORDER BY name ASC;

-- -------------------------------------------------------------
-- -------------------------------------------------------------
-- Search products by name or SKU inside one store.
SELECT *
FROM products 
WHERE store_id = ?
AND (
  name LIKE CONCAT("%", ? , "%")
  OR sku LIKE CONCAT("%", ? , "%")
)
ORDER BY name ASC, sku ASC;
