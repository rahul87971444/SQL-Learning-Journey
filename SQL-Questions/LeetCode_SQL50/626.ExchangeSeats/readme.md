# 626. Exchange Seats

## Problem Statement

Write a solution to swap the seat of every two consecutive students.

Rules:

- Swap every pair of consecutive students.
- If the number of students is odd, the last student's seat remains unchanged.

Return the result table ordered by `id` in ascending order.

---

## Example 1

### Input

### Seat table

| id | student |
|----|---------|
| 1 | Abbot |
| 2 | Doris |
| 3 | Emerson |
| 4 | Green |
| 5 | Jeames |

---

## Output

| id | student |
|----|---------|
| 1 | Doris |
| 2 | Abbot |
| 3 | Green |
| 4 | Emerson |
| 5 | Jeames |

---

## Explanation

Original seating:

| Seat ID | Student |
|---------|---------|
| 1 | Abbot |
| 2 | Doris |
| 3 | Emerson |
| 4 | Green |
| 5 | Jeames |

---

### First Pair

Seats:

```text
1 ↔ 2
```

After swapping:

| Seat ID | Student |
|---------|---------|
| 1 | Doris |
| 2 | Abbot |

---

### Second Pair

Seats:

```text
3 ↔ 4
```

After swapping:

| Seat ID | Student |
|---------|---------|
| 3 | Green |
| 4 | Emerson |

---

### Last Student

Seat:

```text
5
```

Since there is no consecutive student to swap with, the last student remains unchanged.

| Seat ID | Student |
|---------|---------|
| 5 | Jeames |

---

## Final Result

| id | student |
|----|---------|
| 1 | Doris |
| 2 | Abbot |
| 3 | Green |
| 4 | Emerson |
| 5 | Jeames |

---

## Approach

1. Check each seat ID.
2. If the ID is odd and a next seat exists, swap it with the next student.
3. If the ID is even, swap it with the previous student.
4. If the total number of students is odd, keep the last student unchanged.
5. Return the table ordered by `id`.

---

## Key Concepts

- CASE Statement
- Conditional Logic
- ORDER BY
- Modulo Operator (`%`)

---

## Complexity Analysis

### Time Complexity

```text
O(n)
```

where `n` is the number of students.

### Space Complexity

```text
O(1)
```

excluding the output table.
