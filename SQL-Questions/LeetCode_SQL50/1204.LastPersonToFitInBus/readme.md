# 1204. Last Person to Fit in the Bus

## Problem Statement

There is a queue of people waiting to board a bus. The bus has a maximum weight limit of **1000 kilograms**, so some people may not be able to board.

Write a solution to find the **person_name** of the **last person** who can board the bus without exceeding the weight limit.

**Note:**

- People board the bus one at a time according to their `turn`.
- The first person is guaranteed to fit on the bus.

Return the result table in the following format.

---

## Example 1

### Input

### Queue table

| person_id | person_name | weight | turn |
|-----------|-------------|--------|------|
| 5 | Alice | 250 | 1 |
| 4 | Bob | 175 | 5 |
| 3 | Alex | 350 | 2 |
| 6 | John Cena | 400 | 3 |
| 1 | Winston | 500 | 6 |
| 2 | Marie | 200 | 4 |

---

## Output

| person_name |
|-------------|
| John Cena |

---

## Explanation

The people board the bus in increasing order of **turn**.

| Turn | ID | Name | Weight | Total Weight |
|------|----|-----------|--------|--------------|
| 1 | 5 | Alice | 250 | 250 |
| 2 | 3 | Alex | 350 | 600 |
| 3 | 6 | John Cena | 400 | 1000 ✅ |
| 4 | 2 | Marie | 200 | 1200 ❌ |
| 5 | 4 | Bob | 175 | — |
| 6 | 1 | Winston | 500 | — |

---

### Step-by-Step

#### Turn 1

Alice boards.

```text
Total Weight = 250
```

---

#### Turn 2

Alex boards.

```text
250 + 350 = 600
```

---

#### Turn 3

John Cena boards.

```text
600 + 400 = 1000
```

The bus has reached its maximum weight limit.

---

#### Turn 4

Marie wants to board.

```text
1000 + 200 = 1200
```

Since the total weight exceeds **1000**, Marie cannot board.

No one after Marie gets a chance to board.

Therefore, the **last person who successfully boarded the bus** is:

```text
John Cena
```

---

## Approach

1. Sort passengers by their `turn`.
2. Compute the running (cumulative) weight.
3. Continue boarding while the cumulative weight is less than or equal to **1000**.
4. Return the name of the last passenger who satisfies this condition.

---

## Key Concepts

- Window Functions
- Running Sum (Cumulative Sum)
- ORDER BY
- Filtering

---

## Complexity Analysis

### Time Complexity

```text
O(n log n)
```

Sorting the passengers by `turn`.

### Space Complexity

```text
O(1)
```

excluding the output table.
