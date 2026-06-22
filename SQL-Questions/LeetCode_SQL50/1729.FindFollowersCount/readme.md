# 1729. Find Followers Count

## Problem Statement

Write a solution that will, for each user, return the number of followers.

Return the result table ordered by `user_id` in ascending order.

The result format is shown in the following example.

---

## Example 1

### Input

### Followers table

| user_id | follower_id |
|---------|-------------|
| 0       | 1           |
| 1       | 0           |
| 2       | 0           |
| 2       | 1           |

---

## Output

| user_id | followers_count |
|---------|-----------------|
| 0       | 1               |
| 1       | 1               |
| 2       | 2               |

---

## Explanation

### User 0

Followers:

```text
{1}
```

Number of followers:

```text
1
```

---

### User 1

Followers:

```text
{0}
```

Number of followers:

```text
1
```

---

### User 2

Followers:

```text
{0, 1}
```

Number of followers:

```text
2
```

---

## Approach

1. Group records by `user_id`.
2. Count the number of followers (`follower_id`) for each user.
3. Return the count as `followers_count`.
4. Sort the result by `user_id` in ascending order.

---

## Key Concepts

- GROUP BY
- COUNT()
- ORDER BY
- Aggregation

---

## Complexity Analysis

### Time Complexity

```text
O(n)
```

where `n` is the number of rows in the Followers table.

### Space Complexity

```text
O(k)
```

where `k` is the number of unique users.
