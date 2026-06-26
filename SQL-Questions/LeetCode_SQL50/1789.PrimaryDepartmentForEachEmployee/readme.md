# 1789. Primary Department for Each Employee

## Problem Statement

Employees can belong to multiple departments.

When an employee joins multiple departments, they must choose one department as their **primary department**.

Rules:

- If an employee belongs to multiple departments, the row with `primary_flag = 'Y'` represents the primary department.
- If an employee belongs to only one department, then `primary_flag = 'N'`, and that department should be reported as the primary department.

Write a solution to report all employees with their primary department.

Return the result table in any order.

---

## Example 1

### Input

### Employee table

| employee_id | department_id | primary_flag |
|-------------|---------------|--------------|
| 1 | 1 | N |
| 2 | 1 | Y |
| 2 | 2 | N |
| 3 | 3 | N |
| 4 | 2 | N |
| 4 | 3 | Y |
| 4 | 4 | N |

---

## Output

| employee_id | department_id |
|-------------|---------------|
| 1 | 1 |
| 2 | 1 |
| 3 | 3 |
| 4 | 3 |

---

## Explanation

### Employee 1

Records:

| department_id | primary_flag |
|---------------|--------------|
| 1 | N |

Employee 1 belongs to only one department.

Primary department:

```text
1
```

---

### Employee 2

Records:

| department_id | primary_flag |
|---------------|--------------|
| 1 | Y |
| 2 | N |

Department with:

```text
primary_flag = 'Y'
```

is department:

```text
1
```

Primary department:

```text
1
```

---

### Employee 3

Records:

| department_id | primary_flag |
|---------------|--------------|
| 3 | N |

Employee belongs to only one department.

Primary department:

```text
3
```

---

### Employee 4

Records:

| department_id | primary_flag |
|---------------|--------------|
| 2 | N |
| 3 | Y |
| 4 | N |

Department with:

```text
primary_flag = 'Y'
```

is department:

```text
3
```

Primary department:

```text
3
```

---

## Approach

For each employee:

1. If the employee belongs to only one department, return that department.
2. If the employee belongs to multiple departments, return the department where:

```text
primary_flag = 'Y'
```

---

## Key Concepts

- GROUP BY
- COUNT()
- CASE Logic
- Filtering
- Aggregate Functions

---

## Complexity Analysis

### Time Complexity

```text
O(n)
```

where `n` is the number of rows in the Employee table.

### Space Complexity

```text
O(1)
```

excluding the output table.
