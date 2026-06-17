# Number of Unique Subjects Taught by Each Teacher

Write a solution to calculate the number of unique subjects each teacher teaches in the university.

Return the result table in any order.

The result format is shown in the following example.

---

## Example 1

### Input

### Teacher table

| teacher_id | subject_id | dept_id |
|------------|------------|---------|
| 1          | 2          | 3       |
| 1          | 2          | 4       |
| 1          | 3          | 3       |
| 2          | 1          | 1       |
| 2          | 2          | 1       |
| 2          | 3          | 1       |
| 2          | 4          | 1       |

---

## Output

| teacher_id | cnt |
|------------|-----|
| 1          | 2   |
| 2          | 4   |

---

## Explanation

### Teacher 1

- Teaches subject **2** in department **3**
- Teaches subject **2** in department **4**
- Teaches subject **3** in department **3**

Unique subjects taught:

`{2, 3}`

Count = **2**

---

### Teacher 2

- Teaches subject **1** in department **1**
- Teaches subject **2** in department **1**
- Teaches subject **3** in department **1**
- Teaches subject **4** in department **1**

Unique subjects taught:

`{1, 2, 3, 4}`

Count = **4**
