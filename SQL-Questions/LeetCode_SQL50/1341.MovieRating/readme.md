# 1341. Movie Rating

## Problem Statement

Write a solution to:

1. Find the **name of the user** who has rated the greatest number of movies.
   - If there is a tie, return the **lexicographically smaller** user name.

2. Find the **movie title** with the highest average rating in **February 2020**.
   - If there is a tie, return the **lexicographically smaller** movie title.

Return the result table in the following format.

---

## Example 1

### Input

### Movies table

| movie_id | title |
|----------|--------|
| 1 | Avengers |
| 2 | Frozen 2 |
| 3 | Joker |

### Users table

| user_id | name |
|---------|------|
| 1 | Daniel |
| 2 | Monica |
| 3 | Maria |
| 4 | James |

### MovieRating table

| movie_id | user_id | rating | created_at |
|----------|---------|--------|------------|
| 1 | 1 | 3 | 2020-01-12 |
| 1 | 2 | 4 | 2020-02-11 |
| 1 | 3 | 2 | 2020-02-12 |
| 1 | 4 | 1 | 2020-01-01 |
| 2 | 1 | 5 | 2020-02-17 |
| 2 | 2 | 2 | 2020-02-01 |
| 2 | 3 | 2 | 2020-03-01 |
| 3 | 1 | 3 | 2020-02-22 |
| 3 | 2 | 4 | 2020-02-25 |

---

## Output

| results |
|----------|
| Daniel |
| Frozen 2 |

---

## Explanation

### Part 1: User Who Rated the Most Movies

Count the number of movie ratings given by each user.

| User | Ratings Given |
|------|---------------|
| Daniel | 3 |
| Monica | 3 |
| Maria | 2 |
| James | 1 |

Daniel and Monica both rated **3 movies**.

Since there is a tie, choose the **lexicographically smaller** name.

```text
Daniel < Monica
```

Result:

```text
Daniel
```

---

### Part 2: Highest Average Movie Rating in February 2020

Only ratings from **February 2020** are considered.

#### Avengers

Ratings:

```text
4, 2
```

Average:

```text
(4 + 2) / 2 = 3.0
```

---

#### Frozen 2

Ratings:

```text
5, 2
```

Average:

```text
(5 + 2) / 2 = 3.5
```

---

#### Joker

Ratings:

```text
3, 4
```

Average:

```text
(3 + 4) / 2 = 3.5
```

Frozen 2 and Joker both have an average rating of **3.5**.

Since there is a tie, choose the **lexicographically smaller** movie title.

```text
Frozen 2 < Joker
```

Result:

```text
Frozen 2
```

---

## Approach

### Part 1

1. Join the `Users` and `MovieRating` tables.
2. Count the number of ratings for each user.
3. Sort by:
   - Number of ratings (descending)
   - User name (ascending)
4. Return the first user.

### Part 2

1. Filter ratings from **February 2020**.
2. Join the `Movies` table.
3. Calculate the average rating for each movie.
4. Sort by:
   - Average rating (descending)
   - Movie title (ascending)
5. Return the first movie.

---

## Key Concepts

- JOIN
- GROUP BY
- COUNT()
- AVG()
- ORDER BY
- LIMIT
- Date Filtering
- Lexicographical Sorting

---

## Complexity Analysis

### Time Complexity

```text
O(n)
```

where `n` is the number of rows in the `MovieRating` table.

### Space Complexity

```text
O(k)
```

where `k` is the number of unique users and movies.
