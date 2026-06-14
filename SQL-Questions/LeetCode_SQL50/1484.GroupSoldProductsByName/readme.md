# Group Sold Products By The Date

Write a solution to find for each date the number of different products sold and their names.

The sold products names for each date should be sorted lexicographically.

Return the result table ordered by `sell_date`.

The result format is in the following example.

---

## Example 1

### Input

### Activities table

| sell_date  | product     |
|------------|------------|
| 2020-05-30 | Headphone  |
| 2020-06-01 | Pencil     |
| 2020-06-02 | Mask       |
| 2020-05-30 | Basketball |
| 2020-06-01 | Bible      |
| 2020-06-02 | Mask       |
| 2020-05-30 | T-Shirt    |

---

## Output

| sell_date  | num_sold | products                     |
|------------|----------|------------------------------|
| 2020-05-30 | 3        | Basketball,Headphone,T-shirt |
| 2020-06-01 | 2        | Bible,Pencil                 |
| 2020-06-02 | 1        | Mask                         |

---

## Explanation

### 2020-05-30

Sold products:

- Headphone
- Basketball
- T-Shirt

After sorting lexicographically:

`Basketball,Headphone,T-shirt`

Number of distinct products sold:

`3`

---

### 2020-06-01

Sold products:

- Pencil
- Bible

After sorting lexicographically:

`Bible,Pencil`

Number of distinct products sold:

`2`

---

### 2020-06-02

Sold products:

- Mask
- Mask

Distinct products:

`Mask`

Number of distinct products sold:

`1`

Therefore:

`Mask`
