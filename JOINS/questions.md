# INNER JOIN (10 Questions)

 Q1
Show all products with their category names.

 Q2
Show all products with their supplier names.

 Q3
Show product name, category name, and supplier name.

 Q4
Find all active products along with their supplier names.

 Q5
Find all products belonging to the "Electronics" category.

 Q6
Show supplier name and the number of products supplied.

 Q7
Find the average selling price for each supplier.

 Q8
Find the total inventory value for each category.
Formula:
stock_quantity * cost_price

 Q9
Show category name and the highest selling price of products in that category.

 Q10
Find suppliers who supply products costing more than 1000.


---
# LEFT JOIN (10 Questions)

 Q1
Show all suppliers and their products, including suppliers with no products.

 Q2
Show all categories and their products, including categories with no products.

 Q3
Find suppliers who do not supply any products.

 Q4
Find categories that have no products.

 Q5
Show every supplier with the total number of products they supply.
Suppliers with no products should show 0.

 Q6
Show every category with the total stock quantity.
Categories with no products should show 0.

 Q7
Show every supplier with the average selling price of their products.
Suppliers without products should show 0.

 Q8
Find categories whose inventory value is greater than 50,000.
Include empty categories with inventory value 0.

 Q9
Show all suppliers and the highest selling price of their products.
Suppliers without products should display 0.

 Q10
Show all categories and the lowest selling price of their products.
Categories without products should display 0.

---
# CROSS JOIN (3 Questions)

 Q1
Generate every possible combination of suppliers and categories.

 Q2
Generate every possible combination of products and suppliers.

 Q3
Generate every possible combination of categories and stores.

---

# SELF JOIN (5 Questions)

Assume the `employees` table has:

- id
- employee_name
- manager_id

where `manager_id` references `employees.id`.

 Q1
Show every employee along with their manager's name.

 Q2
Find employees who do not have a manager.

 Q3
Show manager name and employee name.

 Q4
Count how many employees work under each manager.

 Q5
Find managers who supervise more than 5 employees.