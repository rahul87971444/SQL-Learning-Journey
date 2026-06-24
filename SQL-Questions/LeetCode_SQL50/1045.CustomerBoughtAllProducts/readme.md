# 1045. Customers Who Bought All Products

## Problem Statement

Write a solution to report the customer IDs from the `Customer` table that bought all the products in the `Product` table.

Return the result table in any order.

The result format is shown in the following example.

---

## Example 1

### Input

### Customer table

| customer_id | product_key |
|-------------|-------------|
| 1           | 5           |
| 2           | 6           |
| 3           | 5           |
| 3           | 6           |
| 1           | 6           |

### Product table

| product_key |
|-------------|
| 5           |
| 6           |

---

## Output

| customer_id |
|-------------|
| 1           |
| 3           |

---

## Explanation

Products available:

```text
5, 6
```

Total products:

```text
2
```

---

### Customer 1

Purchased:

```text
5, 6
```

Number of unique products purchased:

```text
2
```

Customer 1 bought all products.

✅ Include

---

### Customer 2

Purchased:

```text
6
```

Number of unique products purchased:

```text
1
```

Customer 2 did not buy product 5.

❌ Exclude

---

### Customer 3

Purchased:

```text
5, 6
```

Number of unique products purchased:

```text
2
```

Customer 3 bought all products.

✅ Include

---

## Approach

1. Find the total number of products in the `Product` table.
2. Group purchases by `customer_id`.
3. Count distinct products purchased by each customer.
4. Select customers whose count equals the total number of products.

---

## Key Concepts

- COUNT()
- COUNT(DISTINCT)
- GROUP BY
- HAVING
- Subquery

---

## Complexity Analysis

### Time Complexity

```text
O(n)
```

where `n` is the number of rows in the Customer table.

### Space Complexity

```text
O(k)
```

where `k` is the number of unique customers.
