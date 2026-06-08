# Fix Names in a Table

Write a solution to fix the names so that only the first character is uppercase and the rest are lowercase.

Return the result table ordered by `user_id`.

The result format is in the following example.

---

## Example 1

### Input

### Users table

| user_id | name  |
|---------|-------|
| 1       | aLice |
| 2       | bOB   |

---

## Output

| user_id | name  |
|---------|-------|
| 1       | Alice |
| 2       | Bob   |

---

## Explanation

- For each user's name:
  - Convert the first character to uppercase.
  - Convert all remaining characters to lowercase.

### Examples

- `aLice` → `Alice`
- `bOB` → `Bob`

The result should be ordered by `user_id`.
