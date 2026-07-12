-- Q1. Count products per supplier in one store.
SELECT supplier_id, COUNT(id) AS total_products
FROM products
WHERE store_id = ?
GROUP BY supplier_id

-- Q2. Count products per category in one store.
SELECT category_id, COUNT(id) AS total_products
FROM products
WHERE store_id = ?
GROUP BY category_id

-- Q3. Find total stock quantity per category in one store.
SELECT category_id, COALESCE(SUM(stock_quantity),0) AS total_Stock_quantity
FROM products
WHERE store_id = ?
GROUP BY category_id

-- Q4. Find average selling price per category in one store.
SELECT category_id, COALESCE(AVG(selling_price),0) AS avg_sell_price
FROM products
WHERE store_id = ?
GROUP BY category_id


-- Q5. Find total inventory value per category.
SELECT category_id, COALESCE(SUM(stock_quantity * cost_price),0) AS total_inventory_value
FROM products
WHERE store_id = ?
GROUP BY category_id


-- Q6. Count active and inactive products separately.
SELECT is_active,
       COUNT(*) AS total_products
FROM products
WHERE store_id = ?
GROUP BY is_active;


-- Q7. Count suppliers by active/inactive status.
- Use `GROUP BY is_active`.
SELECT is_active, COUNT(id) AS total_suppliers
FROM suppliers
WHERE store_id=?
GROUP BY is_active;


-- Q8. Find highest selling price per category.
SELECT category_id, COALESCE(MAX(selling_price), 0) AS highest_price
FROM products
WHERE store_id = ?
GROUP BY category_id;


-- Q9. Find lowest selling price per category.
SELECT category_id, COALESCE(MIN(selling_price), 0) AS lowest_price
FROM products
WHERE store_id = ?
GROUP BY category_id;

-- Q10. Find total products per supplier, but only show suppliers having more than 5 products.
- Hint: Use `HAVING`.
SELECT supplier_id,
       COUNT(*) AS total_products
FROM products
WHERE store_id = ?
GROUP BY supplier_id
HAVING COUNT(*) > 5;

