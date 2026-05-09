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

# 584. Find Customer Referee

## Problem
Find the names of customers who:
- are **not referred by any customer**, or
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
