
## Schema

* `products(id, name, category_id, supplier_id, cost_price, selling_price, stock_quantity)`
* `categories(id, name)`
* `suppliers(id, name)`

---

# Level 1: Basic Subqueries (Q1–Q10)

### Q1

Find products whose selling price is **greater than the average selling price** of all products.

---

### Q2

Find products whose selling price is **less than the average selling price**.

---

### Q3

Find the **most expensive product(s)**.

*(Hint: Don't use `ORDER BY ... LIMIT 1`.)*

---

### Q4

Find the **cheapest product(s)**.

---

### Q5

Find suppliers who have at least one product.

---

### Q6

Find suppliers who have **no products**.

---

### Q7

Find products that belong to the **Electronics** category.

*(Use a subquery instead of a JOIN.)*

---

### Q8

Find products supplied by **ABC Suppliers**.

*(Use a subquery.)*

---

### Q9

Find categories that contain at least one product.

---

### Q10

Find categories that contain no products.

---

# Level 2: Aggregate Subqueries (Q11–Q20)

### Q11

Find products whose selling price is **higher than the average price of their own category**.

---

### Q12

Find the supplier(s) whose average selling price is the highest.

---

### Q13

Find categories whose total inventory value is greater than the overall average inventory value.

Inventory Value:

```
stock_quantity × cost_price
```

---

### Q14

Find products whose stock quantity is greater than the average stock quantity.

---

### Q15

Find suppliers whose total stock quantity is above the average stock quantity of all suppliers.

---

### Q16

Find the category having the maximum number of products.

---

### Q17

Find suppliers having more products than the average supplier.

---

### Q18

Find products whose selling price equals the maximum selling price in their category.

---

### Q19

Find products whose selling price equals the minimum selling price in their supplier.

---

### Q20

Find suppliers whose total inventory value exceeds 100,000.

---

# Level 3: Correlated Subqueries (Q21–Q26)

### Q21

Find the highest-priced product in every category.

---

### Q22

Find the lowest-priced product in every supplier.

---

### Q23

Find products costing more than the average cost price of their supplier.

---

### Q24

Find suppliers that sell at least one product costing more than 500.

---

### Q25

Find categories where **every product** has stock greater than 20.

---

### Q26

Find suppliers where **all products** have selling prices above 100.

---

# Level 4: EXISTS / NOT EXISTS (Q27–Q30)

### Q27

Find suppliers that have products.

*(Use `EXISTS`.)*

---

### Q28

Find suppliers without products.

*(Use `NOT EXISTS`.)*

---

### Q29

Find categories that contain at least one product with stock quantity greater than 100.

*(Use `EXISTS`.)*

---

### Q30

Find products that are the **only product** supplied by their supplier.

---

# Bonus Interview Questions (Highly Recommended)

If you finish the 30 above, try these as well:

### Bonus 1

Find the **second highest selling price** without using `LIMIT`.

---

### Bonus 2

Find the **third highest selling price**.

---

### Bonus 3

Find duplicate product names.

---

### Bonus 4

Find suppliers who supply products in **every category**.

---

### Bonus 5

Find categories where every product is more expensive than the overall average.

---

### Bonus 6

Find products priced above **all products** supplied by supplier "ABC Suppliers."

---

### Bonus 7

Find suppliers that supply **exactly one** product.

---

### Bonus 8

Find the product(s) with the highest inventory value.

---

### Bonus 9

Find categories where the average selling price is above the overall average selling price.

---

### Bonus 10

Find products whose cost price is greater than **at least one** product supplied by supplier "XYZ."

---