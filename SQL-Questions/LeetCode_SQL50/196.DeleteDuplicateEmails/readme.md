# Delete Duplicate Emails

Write a solution to delete all duplicate emails, keeping only one unique email with the smallest `id`.

For SQL users, please note that you are supposed to write a **DELETE** statement and not a **SELECT** one.

For Pandas users, please note that you are supposed to modify `Person` in place.

After running your script, the answer shown is the `Person` table. The driver will first compile and run your piece of code and then show the `Person` table. The final order of the `Person` table does not matter.

The result format is in the following example.

---

## Example 1

### Input

### Person table

| id | email            |
|----|------------------|
| 1  | john@example.com |
| 2  | bob@example.com  |
| 3  | john@example.com |

---

## Output

| id | email            |
|----|------------------|
| 1  | john@example.com |
| 2  | bob@example.com  |

---

## Explanation

- The email **john@example.com** appears more than once.
- Keep only the row with the smallest `id` (**id = 1**).
- Delete all other rows containing the same email.
- The email **bob@example.com** appears only once, so it remains unchanged.

Therefore, the final table contains only unique email addresses with the smallest corresponding `id`.
