# Patients With a Condition

Write a solution to find the `patient_id`, `patient_name`, and `conditions` of the patients who have Type I Diabetes. Type I Diabetes always starts with the `DIAB1` prefix.

Return the result table in any order.

The result format is in the following example.

---

## Example 1

### Input

### Patients table

| patient_id | patient_name | conditions   |
|------------|--------------|--------------|
| 1          | Daniel       | YFEV COUGH   |
| 2          | Alice        |              |
| 3          | Bob          | DIAB100 MYOP |
| 4          | George       | ACNE DIAB100 |
| 5          | Alain        | DIAB201      |

---

## Output

| patient_id | patient_name | conditions   |
|------------|--------------|--------------|
| 3          | Bob          | DIAB100 MYOP |
| 4          | George       | ACNE DIAB100 |

---

## Explanation

- Type I Diabetes conditions always start with the prefix **DIAB1**.
- Bob has the condition **DIAB100**, which starts with **DIAB1**.
- George has the condition **DIAB100**, which also starts with **DIAB1**.
- Alain has **DIAB201**, which does not start with **DIAB1**, so he is not included.

Therefore, the result contains only **Bob** and **George**.
