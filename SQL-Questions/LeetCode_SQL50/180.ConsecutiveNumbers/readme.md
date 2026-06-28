# 180. Consecutive Numbers

## Problem Statement

Find all numbers that appear at least **three times consecutively**.

Return the result table in any order.

The result format is shown in the following example.

---

## Example 1

### Input

### Logs table

| id | num |
|----|-----|
| 1  | 1   |
| 2  | 1   |
| 3  | 1   |
| 4  | 2   |
| 5  | 1   |
| 6  | 2   |
| 7  | 2   |

---

## Output

| ConsecutiveNums |
|-----------------|
| 1               |

---

## Explanation

The records in order are:

```text
1 → 1 → 1 → 2 → 1 → 2 → 2
```

### Number 1

Occurrences:

```text
1, 1, 1
```

These appear **three times consecutively**.

✅ Included

---

### Number 2

Occurrences:

```text
2
```

Later:

```text
2, 2
```

The maximum consecutive occurrences are only **2**, which is less than **3**.

❌ Not Included

---

Therefore, the result is:

| ConsecutiveNums |
|-----------------|
| 1               |

---

## Approach

1. Compare each row with its next two consecutive rows.
2. If all three rows contain the same number, include that number in the result.
3. Return only distinct numbers.

---

## Key Concepts

- Self Join
- Consecutive Records
- DISTINCT
- SQL Joins

---

## Complexity Analysis

### Time Complexity

```text
O(n)
```

where `n` is the number of rows in the Logs table.

### Space Complexity

```text
O(1)
```

excluding the output table.
