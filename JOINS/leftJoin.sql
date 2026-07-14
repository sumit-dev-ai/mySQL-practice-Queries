
-- Q1 Show all suppliers and their products, including suppliers with no products.
SELECT 
    s.name as supplier_name,
    p.name as product_name
FROM suppliers s
LEFT JOIN products p
  ON s.id = p.supplier_id;


--  Q2 Show all categories and their products, including categories with no products.
SELECT 
  c.name AS category_name,
  p.name AS product_name
FROM categories c
LEFT JOIN products p 
  ON c.id = p.category_id;

--  Q3 Find suppliers who do not supply any products.
SELECT 
    s.name as supplier_name,
    p.name as product_name
FROM suppliers s
LEFT JOIN products p
  ON s.id = p.supplier_id
WHERE p.supplier_id IS NULL;


--  Q4 Find categories that have no products.
SELECT 
  c.name AS category_name,
  p.name AS product_name
FROM categories c
LEFT JOIN products p 
  ON c.id = p.category_id
WHERE p.category_id IS NULL;

--  Q5 Show every supplier with the total number of products they supply.
-- Suppliers with no products should show 0.
SELECT 
    s.name as supplier_name,
    COUNT(p.id) AS total_products
FROM suppliers s
LEFT JOIN products p
  ON s.id = p.supplier_id
GROUP BY s.id,s.name;

--  Q6
-- Show every category with the total stock quantity.
-- Categories with no products should show 0.
SELECT 
    c.name as category_name,
    COALESCE( SUM(p.stock_quantity), 0) AS total_stock    
FROM categories c
LEFT JOIN products p 
ON c.id = p.category_id
GROUP BY c.id, c.name;

--  Q7
-- Show every supplier with the average selling price of their products.
-- Suppliers without products should show 0.
SELECT 
  s.name AS supplier_name,
  COALESCE(AVG(p.selling_price),0) AS average_selling_price
FROM suppliers s
LEFT JOIN products p 
  ON s.id = p.supplier_id
GROUP BY s.id, s.name;

--  Q8
-- Find categories whose inventory value is greater than 50,000.
-- Include empty categories with inventory value 0.
SELECT 
  c.name AS category_name,
  COALESCE(SUM( p.stock_quantity * p.cost_price) ,0) AS total_inventory_val
FROM categories c 
LEFT JOIN products p
  ON c.id = p.category_id
GROUP BY c.id, c.name
HAVING COALESCE(SUM( p.stock_quantity * p.cost_price) ,0) > 50000;

--  Q9
-- Show all suppliers and the highest selling price of their products.
-- Suppliers without products should display 0.
SELECT 
  s.name AS supplier_name,
  COALESCE(MAX(p.selling_price) , 0) AS max_sell_price
FROM suppliers s 
LEFT JOIN products p 
  ON s.id = p.supplier_id
GROUP BY s.id , s.name ;

--  Q10
-- Show all categories and the lowest selling price of their products.
-- Categories without products should display 0.
SELECT 
  c.name AS category_name,
  COALESCE(MIN(p.selling_price) , 0) AS min_sell_price
FROM categories c 
LEFT JOIN products p 
  ON c.id = p.category_id
GROUP BY c.id , c.name ;

