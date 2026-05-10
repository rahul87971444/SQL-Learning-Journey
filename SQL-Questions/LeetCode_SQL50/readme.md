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
