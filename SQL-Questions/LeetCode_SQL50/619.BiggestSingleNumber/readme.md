# 619. Biggest Single Number

## Problem Statement

A **single number** is a number that appears only once in the `MyNumbers` table.

Find the largest single number. If there is no single number, report `null`.

The result format is shown in the following examples.

---

## Example 1

### Input

### MyNumbers table

| num |
|-----|
| 8   |
| 8   |
| 3   |
| 3   |
| 1   |
| 4   |
| 5   |
| 6   |

---

## Output

| num |
|-----|
| 6   |

---

## Explanation

Numbers appearing exactly once:

```text
1, 4, 5, 6
```

Numbers appearing more than once:

```text
8, 3
```

Among the single numbers:

```text
max(1, 4, 5, 6) = 6
```

Therefore, the answer is:

| num |
|-----|
| 6   |

---

## Example 2

### Input

### MyNumbers table

| num |
|-----|
| 8   |
| 8   |
| 7   |
| 7   |
| 3   |
| 3   |
| 3   |

---

## Output

| num |
|------|
| null |

---

## Explanation

Occurrences:

```text
8 → 2 times
7 → 2 times
3 → 3 times
```

There are no numbers that appear exactly once.

Therefore, the result is:

| num |
|------|
| null |

---

## Approach

1. Group rows by `num`.
2. Count occurrences of each number.
3. Keep only numbers that appear exactly once.
4. Find the maximum among them.
5. If no such number exists, return `null`.

---

## Key Concepts

- GROUP BY
- COUNT()
- HAVING
- MAX()
- Aggregate Functions

---

## Complexity Analysis

### Time Complexity

```text
O(n)
```

where `n` is the number of rows in the table.

### Space Complexity

```text
O(k)
```

where `k` is the number of distinct numbers.
