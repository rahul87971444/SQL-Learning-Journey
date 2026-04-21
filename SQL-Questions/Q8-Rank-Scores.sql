-- Q8: Rank Scores
-- LeetCode SQL

SELECT score,
DENSE_RANK() OVER (ORDER BY score DESC) AS rank
FROM Scores;

-- Concepts:
-- Window Function, DENSE_RANK
