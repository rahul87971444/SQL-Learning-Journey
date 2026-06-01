# 1757. Recyclable and Low Fat Products

## Problem
Find the ids of products that are both low fat and recyclable.

## Explanation
- `low_fats = 'Y'` → selects low fat products
- `recyclable = 'Y'` → selects recyclable products
- `AND` ensures both conditions are true

## Example

### Input

| product_id | low_fats | recyclable |
|------------|-----------|-------------|
| 0 | Y | N |
| 1 | Y | Y |
| 2 | N | Y |
| 3 | Y | Y |
| 4 | N | N |

### Output

| product_id |
|------------|
| 1 |
| 3 |

---

# 584. Find Customer Referee

## Problem
Find the names of customers who:
- are not referred by any customer, or
- are referred by a customer whose `id != 2`.

## Explanation
- `referee_id != 2` → selects customers not referred by customer with id `2`
- `referee_id IS NULL` → selects customers with no referee
- `OR` ensures both conditions are included

## Example

### Input

| id | name | referee_id |
|----|------|-------------|
| 1 | Will | NULL |
| 2 | Jane | NULL |
| 3 | Alex | 2 |
| 4 | Bill | NULL |
| 5 | Zack | 1 |
| 6 | Mark | 2 |

### Output

| name |
|------|
| Will |
| Jane |
| Bill |
| Zack |

---

# 595. Big Countries

## Problem
A country is considered **big** if:
- it has an area of at least `3000000` km², or
- it has a population of at least `25000000`.

Write a solution to find the `name`, `population`, and `area` of the big countries.

Return the result table in any order.

## Example

### Input

| name | continent | area | population | gdp |
|------|------------|------|------------|-----|
| Afghanistan | Asia | 652230 | 25500100 | 20343000000 |
| Albania | Europe | 28748 | 2831741 | 12960000000 |
| Algeria | Africa | 2381741 | 37100000 | 188681000000 |
| Andorra | Europe | 468 | 78115 | 3712000000 |
| Angola | Africa | 1246700 | 20609294 | 100990000000 |

### Output

| name | population | area |
|------|------------|------|
| Afghanistan | 25500100 | 652230 |
| Algeria | 37100000 | 2381741 |

---

# 1148. Article Views I

## Problem
Write a solution to find all the authors that viewed at least one of their own articles.

Return the result table sorted by `id` in ascending order.

## Explanation
- `author_id = viewer_id` → selects authors who viewed their own articles
- `DISTINCT` removes duplicate ids
- `ORDER BY id ASC` sorts the result in ascending order

## Example

### Input

| article_id | author_id | viewer_id | view_date |
|------------|-----------|-----------|------------|
| 1 | 3 | 5 | 2019-08-01 |
| 1 | 3 | 6 | 2019-08-02 |
| 2 | 7 | 7 | 2019-08-01 |
| 2 | 7 | 6 | 2019-08-02 |
| 4 | 7 | 1 | 2019-07-22 |
| 3 | 4 | 4 | 2019-07-21 |
| 3 | 4 | 4 | 2019-07-21 |

### Output

| id |
|----|
| 4 |
| 7 |

---

# 1683. Invalid Tweets

## Problem Statement

Write a solution to find the IDs of the invalid tweets.

A tweet is considered invalid if the number of characters in the `content` is strictly greater than `15`.

Return the result table in any order.

---

# Example 1

## Input

### Tweets Table

| tweet_id | content                           |
|----------|-----------------------------------|
| 1        | Let us Code                       |
| 2        | More than fifteen chars are here! |

---

## Output

| tweet_id |
|----------|
| 2        |

---

# Explanation

- Tweet `1` has length = `11` → Valid Tweet
- Tweet `2` has length = `33` → Invalid Tweet

So only tweet id `2` is returned.

---

# Approach

- Use the SQL `LENGTH()` function to calculate the number of characters in `content`.
- Select tweets where content length is greater than `15`.

---

# SQL Query

```sql
SELECT tweet_id
FROM Tweets
WHERE LENGTH(content) > 15;
```

---

# Explanation of Query

## `LENGTH(content)`

Returns the number of characters in the tweet content.

Example:

```text
"Let us Code" → 11
```

---

## `WHERE LENGTH(content) > 15`

Filters only invalid tweets whose content length exceeds `15`.

---

# Time Complexity

```text
O(n)
```

where `n` is the number of rows in the table.

---

# Space Complexity

```text
O(1)
```

---

# Concepts Used

- SQL SELECT
- WHERE Clause
- LENGTH() Function

---

# 1378. Replace Employee ID With The Unique Identifier

## Problem Statement

Write a solution to show the unique ID of each user.

If a user does not have a unique ID, show `null` instead.

Return the result table in any order.

---

# Example 1

## Input

### Employees Table

| id | name     |
|----|----------|
| 1  | Alice    |
| 7  | Bob      |
| 11 | Meir     |
| 90 | Winston  |
| 3  | Jonathan |

---

### EmployeeUNI Table

| id | unique_id |
|----|-----------|
| 3  | 1         |
| 11 | 2         |
| 90 | 3         |

---

# Output

| unique_id | name     |
|-----------|----------|
| null      | Alice    |
| null      | Bob      |
| 2         | Meir     |
| 3         | Winston  |
| 1         | Jonathan |

---

# Explanation

- Alice and Bob do not have a unique ID → show `null`
- Meir has unique ID `2`
- Winston has unique ID `3`
- Jonathan has unique ID `1`

---

# Approach

- Use `LEFT JOIN` to combine both tables.
- Match rows using `id`.
- `LEFT JOIN` keeps all employees even if they do not have a matching unique ID.
- Missing matches automatically appear as `NULL`.

---

# SQL Query

```sql
SELECT EmployeeUNI.unique_id, Employees.name
FROM Employees
LEFT JOIN EmployeeUNI
ON Employees.id = EmployeeUNI.id;
```

---

# Explanation of Query

## `LEFT JOIN`

Keeps all rows from the `Employees` table.

If matching `id` exists in `EmployeeUNI`,
the corresponding `unique_id` is returned.

Otherwise:
```text
NULL
```
is shown.

---

# Join Visualization

## Employees

| id | name |
|---|---|
| 1 | Alice |
| 3 | Jonathan |

---

## EmployeeUNI

| id | unique_id |
|---|---|
| 3 | 1 |

---

## Result After LEFT JOIN

| unique_id | name |
|---|---|
| null | Alice |
| 1 | Jonathan |

---

# Time Complexity

```text
O(n)
```

where `n` is the number of rows.

---

# Space Complexity

```text
O(1)
```

---

# Concepts Used

- SQL JOIN
- LEFT JOIN
- NULL Handling
- Table Matching

---


# 1068. Product Sales Analysis

## Problem statement:

Write a solution to report the `product_name`, `year`, and `price` for each `sale_id` in the `Sales` table.

Return the resulting table in **any order**.

---

## Example

### Input

### Sales Table

| sale_id | product_id | year | quantity | price |
|----------|------------|------|----------|-------|
| 1 | 100 | 2008 | 10 | 5000 |
| 2 | 100 | 2009 | 12 | 5000 |
| 7 | 200 | 2011 | 15 | 9000 |

### Product Table

| product_id | product_name |
|------------|--------------|
| 100 | Nokia |
| 200 | Apple |
| 300 | Samsung |

---

### Output

| product_name | year | price |
|--------------|------|-------|
| Nokia | 2008 | 5000 |
| Nokia | 2009 | 5000 |
| Apple | 2011 | 9000 |

---

## Explanation

- We use an `INNER JOIN` to combine the `Sales` and `Product` tables.
- The join condition is based on the common column `product_id`.
- Then we select:
  - `product_name` from the `Product` table
  - `year` and `price` from the `Sales` table

---

## Complexity Analysis

- **Time Complexity:** `O(n)`
- **Space Complexity:** `O(1)` 

---

## 1581. Customers Who Visited Without Transactions

### Problem

Find the IDs of customers who visited the mall without making any transactions and count how many times this happened.

### Example

#### Input

**Visits**

```text id="vz65x1"
+----------+-------------+
| visit_id | customer_id |
+----------+-------------+
| 1        | 23          |
| 2        | 9           |
| 4        | 30          |
| 5        | 54          |
| 6        | 96          |
| 7        | 54          |
| 8        | 54          |
+----------+-------------+
```

**Transactions**

```text id="n0j0ak"
+----------------+----------+--------+
| transaction_id | visit_id | amount |
+----------------+----------+--------+
| 2              | 5        | 310    |
| 3              | 5        | 300    |
| 9              | 5        | 200    |
| 12             | 1        | 910    |
| 13             | 2        | 970    |
+----------------+----------+--------+
```

#### Output

```text id="d7jlwm"
+-------------+----------------+
| customer_id | count_no_trans |
+-------------+----------------+
| 54          | 2              |
| 30          | 1              |
| 96          | 1              |
+-------------+----------------+
```


### Explanation: 
---
Customer with id = 23 visited the mall once and made one transaction during the visit with id = 12.
Customer with id = 9 visited the mall once and made one transaction during the visit with id = 13.
Customer with id = 30 visited the mall once and did not make any transactions.
Customer with id = 54 visited the mall three times. During 2 visits they did not make any transactions, and during one visit they made 3 transactions.
Customer with id = 96 visited the mall once and did not make any transactions.
As we can see, users with IDs 30 and 96 visited the mall one time without making any transactions. Also, user 54 visited the mall twice and did not make any transactions.


### Concepts Used

* `NOT IN`
* `GROUP BY`
* `COUNT`
* `Subquery`

---
## 192 . Rising Temperature

Write a solution to find all dates' id with higher temperatures compared to its previous dates (yesterday).

Return the result table in any order.

The result format is in the following example.

### Example

#### Input

**Weather Table**

| id | recordDate | temperature |
|----|------------|-------------|
| 1  | 2015-01-01 | 10 |
| 2  | 2015-01-02 | 25 |
| 3  | 2015-01-03 | 20 |
| 4  | 2015-01-04 | 30 |

#### Output

| id |
|----|
| 2  |
| 4  |

#### Explanation

- On `2015-01-02`, temperature increased from `10 → 25`
- On `2015-01-04`, temperature increased from `20 → 30`

---

# 1991.  Average Time of Process per Machine

## Problem Statement

There is a factory website that has several machines, each running the same number of processes.

Write a solution to find the average time each machine takes to complete a process.

The time to complete a process is calculated as:

process time = end timestamp - start timestamp

The average time is calculated by:

(total time of all processes on the machine) / (number of processes run)

The resulting table should contain:
- `machine_id`
- average processing time as `processing_time`

Round the processing time to 3 decimal places.

Return the result table in any order.
---
## Approach
- Join the table with itself using:
  - `machine_id`
  - `process_id`
- Match:
  - one row having `activity_type = 'start'`
  - another row having `activity_type = 'end'`
- Calculate process time:
  end timestamp - start timestamp
- Take average for each machine
- Round to 3 decimal places
---

## Example

### Input

| machine_id | process_id | activity_type | timestamp |
|------------|------------|---------------|-----------|
| 0 | 0 | start | 0.712 |
| 0 | 0 | end | 1.520 |
| 0 | 1 | start | 3.140 |
| 0 | 1 | end | 4.120 |
| 1 | 0 | start | 0.550 |
| 1 | 0 | end | 1.550 |
| 1 | 1 | start | 0.430 |
| 1 | 1 | end | 1.420 |
| 2 | 0 | start | 4.100 |
| 2 | 0 | end | 4.512 |
| 2 | 1 | start | 2.500 |
| 2 | 1 | end | 5.000 |

---

### Output

| machine_id | processing_time |
|------------|-----------------|
| 0 | 0.894 |
| 1 | 0.995 |
| 2 | 1.456 |

---

## Explanation

- Machine 0 average time:

((1.520 - 0.712) + (4.120 - 3.140)) / 2 = 0.894

- Machine 1 average time:

((1.550 - 0.550) + (1.420 - 0.430)) / 2 = 0.995

- Machine 2 average time:

((4.512 - 4.100) + (5.000 - 2.500)) / 2 = 1.456

- `b.timestamp - a.timestamp`
  → gives processing time for one process

- `AVG(...)`
  → calculates average processing time for each machine

- `ROUND(..., 3)`
  → rounds answer to 3 decimal places

- `GROUP BY a.machine_id`
  → gives result machine-wise

## Time Complexity
- O(N)

## Space Complexity
- O(1)

---

# 577.Employee Bonus 

## Problem Statement

Write a solution to report the name and bonus amount of each employee who satisfies either of the following conditions:

- The employee has a bonus less than 1000.
- The employee did not get any bonus.

Return the result table in any order.

---

## Example

### Input

#### Employee Table

| empId | name   | supervisor | salary |
|------|--------|------------|--------|
| 3 | Brad | null | 4000 |
| 1 | John | 3 | 1000 |
| 2 | Dan | 3 | 2000 |
| 4 | Thomas | 3 | 4000 |

#### Bonus Table

| empId | bonus |
|------|-------|
| 2 | 500 |
| 4 | 2000 |

---

### Output

| name | bonus |
|------|-------|
| Brad | null |
| John | null |
| Dan | 500 |

---

## Explanation

- `LEFT JOIN` is used to include all employees even if they do not have a bonus record.
- `b.bonus < 1000` selects employees whose bonus is less than 1000.
- `b.bonus IS NULL` selects employees who did not receive any bonus.

---

# 620. Not Boring Movies

Write a solution to report the movies with an odd-numbered ID and a description that is not `"boring"`.

Return the result table ordered by `rating` in descending order.

The result format is in the following example.

---

## Example 1

### Input

### Cinema table

| id | movie      | description | rating |
|----|------------|-------------|--------|
| 1  | War        | great 3D    | 8.9    |
| 2  | Science    | fiction     | 8.5    |
| 3  | irish      | boring      | 6.2    |
| 4  | Ice song   | Fantacy     | 8.6    |
| 5  | House card | Interesting | 9.1    |

---

## Output

| id | movie      | description | rating |
|----|------------|-------------|--------|
| 5  | House card | Interesting | 9.1    |
| 1  | War        | great 3D    | 8.9    |

---

## Explanation

- We have three movies with odd-numbered IDs: **1, 3, and 5**.
- The movie with **ID = 3** has the description `"boring"`, so it is excluded from the result.
- The remaining movies (**ID = 1** and **ID = 5**) are returned.
- The result is ordered by **rating in descending order**.
