# List the Products Ordered in a Period

Write a solution to get the names of products that have at least **100 units** ordered in **February 2020** and their amount.

Return the result table in any order.

The result format is in the following example.

---

## Example 1

### Input

### Products table

| product_id | product_name          | product_category |
|------------|-----------------------|------------------|
| 1          | Leetcode Solutions    | Book             |
| 2          | Jewels of Stringology | Book             |
| 3          | HP                    | Laptop           |
| 4          | Lenovo                | Laptop           |
| 5          | Leetcode Kit          | T-shirt          |

### Orders table

| product_id | order_date | unit |
|------------|------------|------|
| 1          | 2020-02-05 | 60   |
| 1          | 2020-02-10 | 70   |
| 2          | 2020-01-18 | 30   |
| 2          | 2020-02-11 | 80   |
| 3          | 2020-02-17 | 2    |
| 3          | 2020-02-24 | 3    |
| 4          | 2020-03-01 | 20   |
| 4          | 2020-03-04 | 30   |
| 4          | 2020-03-04 | 60   |
| 5          | 2020-02-25 | 50   |
| 5          | 2020-02-27 | 50   |
| 5          | 2020-03-01 | 50   |

---

## Output

| product_name       | unit |
|--------------------|------|
| Leetcode Solutions | 130  |
| Leetcode Kit       | 100  |

---

## Explanation

### Product 1 - Leetcode Solutions

Ordered in February 2020:

- 60 units on 2020-02-05
- 70 units on 2020-02-10

Total units:

60 + 70 = **130**

Included because **130 ≥ 100**.

---

### Product 2 - Jewels of Stringology

Ordered in February 2020:

- 80 units

Total units:

**80**

Not included because **80 < 100**.

---

### Product 3 - HP

Ordered in February 2020:

- 2 units
- 3 units

Total units:

2 + 3 = **5**

Not included because **5 < 100**.

---

### Product 4 - Lenovo

No orders in February 2020.

Not included.

---

### Product 5 - Leetcode Kit

Ordered in February 2020:

- 50 units on 2020-02-25
- 50 units on 2020-02-27

Total units:

50 + 50 = **100**

Included because **100 ≥ 100**.
