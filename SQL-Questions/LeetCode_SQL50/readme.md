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
