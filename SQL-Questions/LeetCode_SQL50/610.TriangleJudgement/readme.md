# 610. Triangle Judgement

## Problem Statement

Report for every three line segments whether they can form a triangle.

Return the result table in any order.

The result format is shown in the following example.

---

## Example 1

### Input

### Triangle table

| x | y | z |
|---|---|---|
| 13 | 15 | 30 |
| 10 | 20 | 15 |

---

## Output

| x | y | z | triangle |
|---|---|---|----------|
| 13 | 15 | 30 | No |
| 10 | 20 | 15 | Yes |

---

## Explanation

A triangle can be formed only if the **Triangle Inequality Theorem** is satisfied:

```text
x + y > z
x + z > y
y + z > x
```

All three conditions must be true.

---

### Row 1

Sides:

```text
13, 15, 30
```

Check:

```text
13 + 15 = 28
28 > 30 ❌
```

Since one condition fails, these sides cannot form a triangle.

Result:

```text
No
```

---

### Row 2

Sides:

```text
10, 20, 15
```

Check:

```text
10 + 20 = 30 > 15 ✅
10 + 15 = 25 > 20 ✅
20 + 15 = 35 > 10 ✅
```

All conditions are satisfied.

Result:

```text
Yes
```

---

## Approach

For each row:

1. Check whether:
   - `x + y > z`
   - `x + z > y`
   - `y + z > x`
2. If all conditions are true, return:

```text
Yes
```

Otherwise return:

```text
No
```

---

## Key Concepts

- CASE Statement
- Conditional Logic
- Triangle Inequality Theorem

---

## Complexity Analysis

### Time Complexity

```text
O(n)
```

where `n` is the number of rows in the Triangle table.

### Space Complexity

```text
O(1)
```

excluding the output table.
