# 1907. Count Salary Categories

## Problem Statement

Write a solution to calculate the number of bank accounts for each salary category.

The salary categories are:

- **Low Salary**: Income strictly less than **20000**
- **Average Salary**: Income between **20000** and **50000** (inclusive)
- **High Salary**: Income strictly greater than **50000**

The result table **must contain all three categories**. If there are no accounts in a category, return **0**.

Return the result table in any order.

---

## Example 1

### Input

### Accounts table

| account_id | income |
|------------|--------|
| 3 | 108939 |
| 2 | 12747 |
| 8 | 87709 |
| 6 | 91796 |

---

## Output

| category | accounts_count |
|----------|----------------|
| Low Salary | 1 |
| Average Salary | 0 |
| High Salary | 3 |

---

## Explanation

### Low Salary

Income condition:

```text
income < 20000
```

Matching account:

| account_id | income |
|------------|--------|
| 2 | 12747 |

Accounts count:

```text
1
```

---

### Average Salary

Income condition:

```text
20000 <= income <= 50000
```

Matching accounts:

```text
None
```

Accounts count:

```text
0
```

---

### High Salary

Income condition:

```text
income > 50000
```

Matching accounts:

| account_id | income |
|------------|--------|
| 3 | 108939 |
| 6 | 91796 |
| 8 | 87709 |

Accounts count:

```text
3
```

---

## Approach

1. Classify every account into one of the three salary categories.
2. Count the number of accounts in each category.
3. Ensure all three categories appear in the result, even if a category has zero accounts.

---

## Key Concepts

- CASE Statement
- Conditional Aggregation
- COUNT()
- UNION ALL (or Common Table Expression)
- GROUP BY

---

## Complexity Analysis

### Time Complexity

```text
O(n)
```

where `n` is the number of rows in the Accounts table.

### Space Complexity

```text
O(1)
```

excluding the output table.
