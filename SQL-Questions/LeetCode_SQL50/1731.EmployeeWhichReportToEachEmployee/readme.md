# 1731. The Number of Employees Which Report to Each Employee

## Problem Statement

For this problem, we will consider a manager an employee who has at least one other employee reporting to them.

Write a solution to report:

- `employee_id`
- `name`
- `reports_count` (number of employees who report directly to them)
- `average_age` of the direct reports rounded to the nearest integer

Return the result table ordered by `employee_id`.

---

## Example 1

### Input

### Employees table

| employee_id | name  | reports_to | age |
|-------------|-------|------------|-----|
| 9 | Hercy | null | 43 |
| 6 | Alice | 9 | 41 |
| 4 | Bob | 9 | 36 |
| 2 | Winston | null | 37 |

---

## Output

| employee_id | name | reports_count | average_age |
|-------------|------|---------------|-------------|
| 9 | Hercy | 2 | 39 |

---

## Explanation

### Manager: Hercy (Employee 9)

Direct reports:

| Employee | Age |
|----------|-----|
| Alice | 41 |
| Bob | 36 |

Reports count:

```text
2
```

Average age:

```text
(41 + 36) / 2
= 38.5
≈ 39
```

After rounding:

```text
39
```

Result:

| employee_id | name | reports_count | average_age |
|-------------|------|---------------|-------------|
| 9 | Hercy | 2 | 39 |

---

## Example 2

### Input

### Employees table

| employee_id | name | reports_to | age |
|-------------|------|------------|-----|
| 1 | Michael | null | 45 |
| 2 | Alice | 1 | 38 |
| 3 | Bob | 1 | 42 |
| 4 | Charlie | 2 | 34 |
| 5 | David | 2 | 40 |
| 6 | Eve | 3 | 37 |
| 7 | Frank | null | 50 |
| 8 | Grace | null | 48 |

---

## Output

| employee_id | name | reports_count | average_age |
|-------------|------|---------------|-------------|
| 1 | Michael | 2 | 40 |
| 2 | Alice | 2 | 37 |
| 3 | Bob | 1 | 37 |

---

## Explanation

### Manager: Michael (Employee 1)

Direct reports:

| Employee | Age |
|----------|-----|
| Alice | 38 |
| Bob | 42 |

Reports count:

```text
2
```

Average age:

```text
(38 + 42) / 2
= 40
```

Result:

```text
average_age = 40
```

---

### Manager: Alice (Employee 2)

Direct reports:

| Employee | Age |
|----------|-----|
| Charlie | 34 |
| David | 40 |

Reports count:

```text
2
```

Average age:

```text
(34 + 40) / 2
= 37
```

Result:

```text
average_age = 37
```

---

### Manager: Bob (Employee 3)

Direct reports:

| Employee | Age |
|----------|-----|
| Eve | 37 |

Reports count:

```text
1
```

Average age:

```text
37
```

Result:

```text
average_age = 37
```

---

## Approach

1. Identify managers using the `reports_to` column.
2. Group employees by their manager.
3. Count direct reports for each manager.
4. Calculate the average age of the direct reports.
5. Round the average age to the nearest integer.
6. Join with the Employees table to get the manager's name.
7. Sort by `employee_id`.

---

## Key Concepts

- Self Join
- GROUP BY
- COUNT()
- AVG()
- ROUND()
- Aggregate Functions

---

## Complexity Analysis

### Time Complexity

```text
O(n)
```

where `n` is the number of employees.

### Space Complexity

```text
O(m)
```

where `m` is the number of managers.
