
-- Show all products with their category names.
SELECT
    p.id,
    p.name,
    c.id AS category_id,
    c.name AS category_name
FROM products p
INNER JOIN categories c
    ON p.category_id = c.id;

--  Q2 Show all products with their supplier names.
SELECT 
    p.id AS product_id,
    p.name AS product_name,
    s.id AS supplier_id,
    s.name AS supplier_name
  FROM products p
  INNER JOIN suppliers s
    ON p.supplier_id = s.id; 
    


--  Q3 Show product name, category name, and supplier name.
SELECT 
    p.name as product_name,
    c.name as category_name,
    s.name as supplier_name
FROM products p
INNER JOIN categories c
    ON p.category_id = c.id
INNER JOIN suppliers s
    ON p.supplier_id = s.id;


--  Q4 Find all active products along with their supplier names.
SELECT 
    p.name AS product_name,
    s.name AS supplier_name
FROM products p
INNER JOIN suppliers s
    ON p.supplier_id = s.id
WHERE p.is_active = true;


--  Q5 Find all products belonging to the "Electronics" category.
SELECT 
  p.name AS product_name,
  c.name AS category_name
FROM products p
INNER JOIN categories c
  ON p.category_id = c.id
WHERE c.name = 'Electronics';

--  Q6 Show supplier name and the number of products supplied.
SELECT 
  s.id AS supplier_id,
  s.name AS supplier_name,
  COUNT(p.id) AS total_products
FROM products p
INNER JOIN suppliers s
  ON p.supplier_id = s.id
GROUP BY s.id, s.name;


--  Q7 Find the average selling price for each supplier.
SELECT 
  s.name AS supplier_name,
  COALESCE(AVG(p.selling_price),0) AS avg_selling_price
FROM products p
INNER JOIN suppliers s
  ON p.supplier_id = s.id
GROUP BY s.id, s.name;

--  Q8 Find the total inventory value for each category.
SELECT 
    c.name AS category_name,
    SUM(p.cost_price * p.stock_quantity) AS total_inventory_value
FROM products p
INNER JOIN categories c
ON p.category_id = c.id
GROUP BY c.id, c.name;

--  Q9 Show category name and the highest selling price of products in that category.
SELECT 
  c.name AS category_name,
  MAX(p.selling_price) AS highest_selling_price
FROM products p
INNER JOIN categories c
  ON p.category_id = c.id
GROUP BY c.id, c.name;

--  Q10-Find suppliers who supply products costing more than 1000.
SELECT 
  s.name AS supplier_name,
  p.cost_price AS cost_price
FROM products p
INNER JOIN suppliers s
  ON p.supplier_id = s.id
WHERE p.cost_price > 1000;

