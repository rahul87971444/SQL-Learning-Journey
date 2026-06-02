# Average Selling Price

Write a solution to find the average selling price for each product. `average_price` should be rounded to **2 decimal places**. If a product does not have any sold units, its average selling price is assumed to be **0**.

Return the result table in any order.

The result format is in the following example.

---

## Example 1

### Input

### Prices table

| product_id | start_date | end_date   | price |
|------------|------------|------------|-------|
| 1          | 2019-02-17 | 2019-02-28 | 5     |
| 1          | 2019-03-01 | 2019-03-22 | 20    |
| 2          | 2019-02-01 | 2019-02-20 | 15    |
| 2          | 2019-02-21 | 2019-03-31 | 30    |

### UnitsSold table

| product_id | purchase_date | units |
|------------|---------------|-------|
| 1          | 2019-02-25    | 100   |
| 1          | 2019-03-01    | 15    |
| 2          | 2019-02-10    | 200   |
| 2          | 2019-03-22    | 30    |

---

## Output

| product_id | average_price |
|------------|---------------|
| 1          | 6.96          |
| 2          | 16.96         |

---

## Explanation

Average selling price = **Total Price of Product / Number of Products Sold**

### Product 1

Average selling price:

((100 × 5) + (15 × 20)) / 115

= (500 + 300) / 115

= 800 / 115

= **6.96**

### Product 2

Average selling price:

((200 × 15) + (30 × 30)) / 230

= (3000 + 900) / 230

= 3900 / 230

= **16.96**
