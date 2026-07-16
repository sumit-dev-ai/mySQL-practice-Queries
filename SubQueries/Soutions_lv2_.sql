

-- Find products whose selling price is **higher than the average price of their own category**.
-- correlated query
SELECT 
p1.name AS product_name
FROM products p1
WHERE p1.selling_price >
(
    SELECT AVG(p2.selling_price)
    FROM products p2
    WHERE p2.category_id = p1.category_id
);


-- Find the supplier(s) whose average selling price is the highest.
SELECT supplier_id,
       AVG(selling_price) AS avg_price
FROM Products
GROUP BY supplier_id
HAVING AVG(selling_price) = (
    SELECT MAX(avg_price)
    FROM (
        SELECT supplier_id,
               AVG(selling_price) AS avg_price
        FROM Products
        GROUP BY supplier_id
    ) t
);


-- Find categories whose total inventory value is greater than the overall average inventory value.
SELECT category
FROM Products
GROUP BY category
HAVING SUM(selling_price * quantity) >
(
    SELECT AVG(selling_price * quantity)
    FROM Products
);



-- Find products whose stock quantity is greater than the average stock quantity.
SELECT *
FROM Products
WHERE stock_quantity >
(
    SELECT AVG(stock_quantity)
    FROM Products
);


-- Find suppliers whose total stock quantity is above the average stock quantity of all suppliers.
SELECT s.supplier_name
FROM Supplier s
JOIN Products p
ON s.supplier_id = p.supplier_id
GROUP BY s.supplier_id, s.supplier_name
HAVING SUM(p.stock_quantity) >
(
    SELECT AVG(total_stock)
    FROM
    (
        SELECT supplier_id,
               SUM(stock_quantity) AS total_stock
        FROM Products
        GROUP BY supplier_id
    ) t
);




-- Find the category having the maximum number of products.
SELECT category
FROM Products
GROUP BY category
HAVING COUNT(*) =
(
    SELECT MAX(product_count)
    FROM
    (
        SELECT COUNT(*) AS product_count
        FROM Products
        GROUP BY category
    ) t
);



-- Find suppliers having more products than the average supplier.
SELECT s.supplier_name
FROM Supplier s
JOIN Products p
ON s.supplier_id = p.supplier_id
GROUP BY s.supplier_id, s.supplier_name
HAVING COUNT(*) >
(
    SELECT AVG(product_count)
    FROM
    (
        SELECT COUNT(*) AS product_count
        FROM Products
        GROUP BY supplier_id
    ) t
);



-- Find products whose selling price equals the maximum selling price in their category.
SELECT *
FROM Products p
WHERE selling_price =
(
    SELECT MAX(selling_price)
    FROM Products
    WHERE category = p.category
);



-- Find products whose selling price equals the minimum selling price in their supplier.

SELECT *
FROM Products p
WHERE selling_price =
(
    SELECT MIN(selling_price)
    FROM Products
    WHERE supplier_id = p.supplier_id
);


-- Find suppliers whose total inventory value exceeds 100,000.
SELECT s.supplier_name
FROM Supplier s
JOIN Products p
ON s.supplier_id = p.supplier_id
GROUP BY s.supplier_id, s.supplier_name
HAVING SUM(p.selling_price * p.stock_quantity) > 100000;