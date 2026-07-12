# SQL Practice Questions

-- Q1. Count total products of one store.
SELECT COUNT(id) AS total_products
FROM products
WHERE store_id = ?;

-- Q2. Count active products of one store.
SELECT COUNT(id) AS total_active_products
FROM products
WHERE store_id = ?
AND is_active = true;

-- Q3. Count low stock products of one store.
SELECT COUNT(id) AS total_lowStock_products
FROM products
WHERE store_id = ?
AND stock_quantity < low_stock_threshold;

-- Q4. Find total stock quantity of one store.
SELECT COALESCE(SUM(stock_quantity),0) AS total_Stock_quantity
FROM products
WHERE store_id = ?;

-- Q5. Find average selling price of products in one store.
SELECT COALESCE(avg(selling_price), 0) AS avg_sell_price
FROM products
WHERE store_id = ?;




-- Q6. Find highest selling price in one store.
SELECT COALESCE(MAX(selling_price), 0) AS higest_sell_price
FROM products
WHERE store_id = ?;



-- Q7. Find lowest selling price in one store.
SELECT COALESCE(MIN(selling_price), 0) AS lowest_sell_price
FROM products
WHERE store_id = ?;


-- Q8. Find total inventory value of one store.
SELECT COALESCE(SUM( cost_price * stock_quantity ), 0) AS inventory_value
FROM products
WHERE store_id = ?;

-- Q9. Count suppliers of one store.
SELECT COUNT(id)
FROM suppliers
WHERE store_id = ?;




-- Q10. Count active suppliers of one store.
SELECT COUNT(id)
FROM suppliers
WHERE store_id = ?
AND is_active = true;
