# Second Highest Salary

Write a solution to find the second highest distinct salary from the `Employee` table. If there is no second highest salary, return `null` (return `None` in Pandas).

The result format is in the following example.

---

## Example 1

### Input

### Employee table

| id | salary |
|----|--------|
| 1  | 100    |
| 2  | 200    |
| 3  | 300    |

---

## Output

| SecondHighestSalary |
|---------------------|
| 200                 |

---

## Explanation

- The distinct salaries are: **100, 200, 300**
- The highest salary is **300**
- The second highest distinct salary is **200**

Therefore, the result is:

| SecondHighestSalary |
|---------------------|
| 200                 |

---

## Example 2

### Input

### Employee table

| id | salary |
|----|--------|
| 1  | 100    |

---

## Output

| SecondHighestSalary |
|---------------------|
| null                |

---

## Explanation

- There is only one distinct salary: **100**
- Since a second highest distinct salary does not exist, return **null**.
