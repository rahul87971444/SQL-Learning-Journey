# 1321. Restaurant Growth

## Problem Statement

You are the restaurant owner and want to analyze a possible expansion.

Compute the **7-day moving average** of the total amount customers paid.

For each day:

- Consider the **current day and the previous 6 days** (a 7-day window).
- Calculate:
  - **amount** → Total money collected during the 7-day window.
  - **average_amount** → Average daily revenue over the 7 days, rounded to **2 decimal places**.
- There is at least one customer every day.

Return the result table ordered by `visited_on` in ascending order.

---

## Example 1

### Input

### Customer table

| customer_id | name | visited_on | amount |
|-------------|------|------------|--------|
| 1 | Jhon | 2019-01-01 | 100 |
| 2 | Daniel | 2019-01-02 | 110 |
| 3 | Jade | 2019-01-03 | 120 |
| 4 | Khaled | 2019-01-04 | 130 |
| 5 | Winston | 2019-01-05 | 110 |
| 6 | Elvis | 2019-01-06 | 140 |
| 7 | Anna | 2019-01-07 | 150 |
| 8 | Maria | 2019-01-08 | 80 |
| 9 | Jaze | 2019-01-09 | 110 |
| 1 | Jhon | 2019-01-10 | 130 |
| 3 | Jade | 2019-01-10 | 150 |

---

## Output

| visited_on | amount | average_amount |
|------------|--------|----------------|
| 2019-01-07 | 860 | 122.86 |
| 2019-01-08 | 840 | 120.00 |
| 2019-01-09 | 840 | 120.00 |
| 2019-01-10 | 1000 | 142.86 |

---

# Explanation

Before calculating the moving average, combine all payments made on the same day.

| Date | Total Amount |
|------|--------------|
| 2019-01-01 | 100 |
| 2019-01-02 | 110 |
| 2019-01-03 | 120 |
| 2019-01-04 | 130 |
| 2019-01-05 | 110 |
| 2019-01-06 | 140 |
| 2019-01-07 | 150 |
| 2019-01-08 | 80 |
| 2019-01-09 | 110 |
| 2019-01-10 | 280 |

> **Note:** On **2019-01-10**, there are two customers:
>
> - Jhon → 130
> - Jade → 150
>
> Total = **280**

---

## Window 1

**2019-01-01 → 2019-01-07**

Daily revenue:

```text
100 + 110 + 120 + 130 + 110 + 140 + 150
```

Total amount:

```text
860
```

Average:

```text
860 / 7 = 122.86
```

Result:

| visited_on | amount | average_amount |
|------------|--------|----------------|
| 2019-01-07 | 860 | 122.86 |

---

## Window 2

**2019-01-02 → 2019-01-08**

Daily revenue:

```text
110 + 120 + 130 + 110 + 140 + 150 + 80
```

Total:

```text
840
```

Average:

```text
840 / 7 = 120.00
```

Result:

| visited_on | amount | average_amount |
|------------|--------|----------------|
| 2019-01-08 | 840 | 120.00 |

---

## Window 3

**2019-01-03 → 2019-01-09**

Daily revenue:

```text
120 + 130 + 110 + 140 + 150 + 80 + 110
```

Total:

```text
840
```

Average:

```text
840 / 7 = 120.00
```

Result:

| visited_on | amount | average_amount |
|------------|--------|----------------|
| 2019-01-09 | 840 | 120.00 |

---

## Window 4

**2019-01-04 → 2019-01-10**

Daily revenue:

```text
130 + 110 + 140 + 150 + 80 + 110 + 280
```

Total:

```text
1000
```

Average:

```text
1000 / 7 = 142.86
```

Result:

| visited_on | amount | average_amount |
|------------|--------|----------------|
| 2019-01-10 | 1000 | 142.86 |

---

## Approach

1. First, calculate the **total revenue for each day**.
2. For every day starting from the **7th day**, consider the **current day and previous 6 days**.
3. Compute:
   - Total revenue in the 7-day window.
   - Average revenue = Total ÷ 7.
4. Round the average to **2 decimal places**.
5. Return the results ordered by `visited_on`.

---

## Key Concepts

- GROUP BY
- SUM()
- Window Functions
- Moving Average
- Rolling Window
- ROUND()

---

## Complexity Analysis

### Time Complexity

```text
O(n)
```

where `n` is the number of days after grouping by `visited_on`.

### Space Complexity

```text
O(n)
```

to store the daily aggregated revenue.
