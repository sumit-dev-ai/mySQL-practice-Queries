ORDER BY and LIMIT
sample data
# Stores

| id | name | city | is_active | created_at |
|---:|------|------|:---------:|------------|
| 1 | Tech Mart | Bangalore | TRUE | 2024-01-10 |
| 2 | Fresh Foods | Mysore | TRUE | 2024-02-15 |
| 3 | Home Needs | Chennai | FALSE | 2024-03-05 |
---

# Suppliers

| id | store_id | name | company_name | phone | is_active | created_at |
|---:|---------:|------|--------------|--------|:---------:|------------|
| 1 | 1 | Alpha Traders | Alpha Pvt Ltd | 9876543210 | TRUE | 2024-01-15 |
| 2 | 1 | Zenith Supplies | Zenith Ltd | 9876543211 | TRUE | 2024-03-01 |
| 3 | 1 | NULL | Global Wholesale | 9876543212 | TRUE | 2024-02-10 |
| 4 | 1 | Bright Distributors | Bright Corp | 9876543213 | FALSE | 2024-04-12 |
| 5 | 2 | Metro Traders | Metro Ltd | 9876543214 | TRUE | 2024-01-20 |
| 6 | 2 | Apex Supply | Apex Inc | 9876543215 | TRUE | 2024-05-18 |
| 7 | 3 | Nova Traders | Nova Ltd | 9876543216 | TRUE | 2024-03-22 |

---

# Products

| id | store_id | supplier_id | name | category | price | stock_quantity | is_active | created_at |
|---:|---------:|------------:|------|----------|------:|---------------:|:---------:|------------|
| 1 | 1 | 1 | Laptop | Electronics | 65000 | 10 | TRUE | 2024-01-20 |
| 2 | 1 | 2 | Mouse | Accessories | 800 | 150 | TRUE | 2024-02-05 |
| 3 | 1 | 2 | Keyboard | Accessories | 1200 | 80 | TRUE | 2024-02-18 |
| 4 | 1 | 3 | Monitor | Electronics | 15000 | 40 | FALSE | 2024-03-10 |
| 5 | 1 | 4 | USB Cable | Accessories | 300 | 300 | TRUE | 2024-04-01 |
| 6 | 1 | 4 | Webcam | Electronics | 2500 | 25 | TRUE | 2024-05-15 |
| 7 | 1 | 1 | SSD | Storage | 4500 | 70 | TRUE | 2024-05-20 |
| 8 | 2 | 5 | Rice Bag | Grocery | 1200 | 200 | TRUE | 2024-02-12 |
| 9 | 2 | 6 | Cooking Oil | Grocery | 1800 | 90 | TRUE | 2024-06-01 |
| 10 | 3 | 7 | Sofa | Furniture | 35000 | 8 | TRUE | 2024-04-18 |

Q11
Show latest suppliers of one store.

Q12
Show latest products of one store.

Q13
Show the 5 newest products of one store.

Q14
Show the 10 most expensive products of one store.

Q15
Show the cheapest product of one store.

Q16
Show oldest suppliers of one store.

Q17
Show first 10 suppliers of one store based on name alphabetically.

Q18
Show latest 3 active products of one store.

Q19
Show top 5 products with highest stock quantity of one store.

