# Find Users With Valid E-Mails

Write a solution to find the users who have valid emails.

A valid e-mail has a prefix name and a domain where:

- The prefix name is a string that may contain:
  - letters (upper or lower case)
  - digits
  - underscore `_`
  - period `.`
  - dash `-`
- The prefix name must start with a letter.
- The domain is `@leetcode.com`.

Return the result table in any order.

The result format is in the following example.

---

## Example 1

### Input

### Users table

| user_id | name      | mail                    |
|---------|-----------|-------------------------|
| 1       | Winston   | winston@leetcode.com    |
| 2       | Jonathan  | jonathanisgreat         |
| 3       | Annabelle | bella-@leetcode.com     |
| 4       | Sally     | sally.come@leetcode.com |
| 5       | Marwan    | quarz#2020@leetcode.com |
| 6       | David     | david69@gmail.com       |
| 7       | Shapiro   | .shapo@leetcode.com     |

---

## Output

| user_id | name      | mail                    |
|---------|-----------|-------------------------|
| 1       | Winston   | winston@leetcode.com    |
| 3       | Annabelle | bella-@leetcode.com     |
| 4       | Sally     | sally.come@leetcode.com |

---

## Explanation

### User 1

`winston@leetcode.com`

- Starts with a letter.
- Contains only valid characters.
- Uses the correct domain.

✅ Valid

---

### User 2

`jonathanisgreat`

- Missing the domain part.

❌ Invalid

---

### User 3

`bella-@leetcode.com`

- Starts with a letter.
- Contains only valid characters (`-` is allowed).
- Uses the correct domain.

✅ Valid

---

### User 4

`sally.come@leetcode.com`

- Starts with a letter.
- Contains only valid characters (`.` is allowed).
- Uses the correct domain.

✅ Valid

---

### User 5

`quarz#2020@leetcode.com`

- Contains `#`, which is not allowed.

❌ Invalid

---

### User 6

`david69@gmail.com`

- Domain is not `@leetcode.com`.

❌ Invalid

---

### User 7

`.shapo@leetcode.com`

- Prefix starts with a period instead of a letter.

❌ Invalid
