# 596. Classes More Than 5 Students

## Problem Statement

Write a solution to find all the classes that have at least five students.

Return the result table in any order.

The result format is shown in the following example.

---

## Example 1

### Input

### Courses table

| student | class |
|----------|----------|
| A | Math |
| B | English |
| C | Math |
| D | Biology |
| E | Math |
| F | Computer |
| G | Math |
| H | Math |
| I | Math |

---

## Output

| class |
|--------|
| Math |

---

## Explanation

### Math

Students enrolled:

```text
A, C, E, G, H, I
```

Total students:

```text
6
```

Since:

```text
6 >= 5
```

Math is included in the result.

---

### English

Students enrolled:

```text
B
```

Total students:

```text
1
```

Since:

```text
1 < 5
```

English is not included.

---

### Biology

Students enrolled:

```text
D
```

Total students:

```text
1
```

Since:

```text
1 < 5
```

Biology is not included.

---

### Computer

Students enrolled:

```text
F
```

Total students:

```text
1
```

Since:

```text
1 < 5
```

Computer is not included.

---

## Approach

1. Group records by `class`.
2. Count the number of students in each class.
3. Keep only classes having at least 5 students.

---

## Key Concepts

- GROUP BY
- COUNT()
- HAVING clause
- Aggregation

---

## Complexity Analysis

### Time Complexity

```text
O(n)
```

where `n` is the number of rows in the Courses table.

### Space Complexity

```text
O(k)
```

where `k` is the number of unique classes.
