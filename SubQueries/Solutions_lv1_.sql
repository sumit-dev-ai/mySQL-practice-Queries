
-- Find products whose selling price is **greater than the average selling price** of all products.
SELECT name , selling_price
FROM products
WHERE selling_price > 
(
    SELECT 
        AVG(selling_price)
    FROM products
)


-- Find the **most expensive product(s)**.
-- *(Hint: Dont use `ORDER BY ... LIMIT 1`.)*
SELECT name , selling_price
FROM products
WHERE selling_price = 
(
    SELECT 
        MAX(selling_price)
    FROM products
)


-- Find suppliers who have at least one product.

SELECT supplier_id, supplier_name
FROM suppliers s
WHERE EXISTS (
    SELECT 1
    FROM products p
    WHERE p.supplier_id = s.supplier_id
);
---


-- Find suppliers who have **no products**.
SELECT supplier_id, supplier_name
FROM suppliers s
WHERE NOT EXISTS(
    SELECT 1
    FROM products p
    WHERE p.supplier_id = s.supplier_id
)



-- Find products that belong to the **Electronics** category.
SELECT p.name , p.selling_price
FROM products p
WHERE EXISTS 
(
    SELECT 1
    FROM categories c
    WHERE p.category_id = c.id
    AND c.name = 'Electronics' 
);


-- Find categories that contain at least one product.
SELECT c.name 
FROM categories c
WHERE EXISTS 
(
    SELECT 1
    FROM products p
    WHERE p.category_id = c.id
);
---
