# 1164. Product Price at a Given Date

## Problem Statement

Initially, all products have a price of **10**.

Write a solution to find the price of every product on the date **2019-08-16**.

Return the result table in any order.

---

## Example 1

### Input

### Products table

| product_id | new_price | change_date |
|------------|-----------|-------------|
| 1 | 20 | 2019-08-14 |
| 2 | 50 | 2019-08-14 |
| 1 | 30 | 2019-08-15 |
| 1 | 35 | 2019-08-16 |
| 2 | 65 | 2019-08-17 |
| 3 | 20 | 2019-08-18 |

---

## Output

| product_id | price |
|------------|-------|
| 2 | 50 |
| 1 | 35 |
| 3 | 10 |

---

## Explanation

Initially, every product has:

```text
Price = 10
```

We need the price of each product on:

```text
2019-08-16
```

---

### Product 1

Price changes:

| Date | Price |
|------|-------|
| 2019-08-14 | 20 |
| 2019-08-15 | 30 |
| 2019-08-16 | 35 |

The latest price on or before **2019-08-16** is:

```text
35
```

Result:

```text
35
```

---

### Product 2

Price changes:

| Date | Price |
|------|-------|
| 2019-08-14 | 50 |
| 2019-08-17 | 65 |

The update on **2019-08-17** happened after the required date.

Therefore, on **2019-08-16**, the latest valid price is:

```text
50
```

---

### Product 3

Price changes:

| Date | Price |
|------|-------|
| 2019-08-18 | 20 |

This update happened **after** 2019-08-16.

Since there is no price change on or before the given date, the product keeps its initial price:

```text
10
```

---

## Approach

For each product:

1. Find the latest price change on or before **2019-08-16**.
2. If such a record exists, return that price.
3. Otherwise, return the default price **10**.

---

## Key Concepts

- GROUP BY
- MAX()
- LEFT JOIN
- CASE / IFNULL / COALESCE
- Date Filtering

---

## Complexity Analysis

### Time Complexity

```text
O(n)
```

where `n` is the number of rows in the Products table.

### Space Complexity

```text
O(k)
```

where `k` is the number of distinct products.
