-- Step 1: assign row numbers per student
WITH ranked AS (
    SELECT 
        studentid,
        logindate,
        ROW_NUMBER() OVER (PARTITION BY studentid ORDER BY logindate) AS rn
    FROM login
),

-- Step 2: create groups for consecutive dates
grouped AS (
    SELECT 
        studentid,
        logindate,
        DATE_SUB(logindate, INTERVAL rn DAY) AS grp
    FROM ranked
),

-- Step 3: count streak lengths
streaks AS (
    SELECT 
        studentid,
        COUNT(*) AS streak_length
    FROM grouped
    GROUP BY studentid, grp
),

-- Step 4: find max streak per student
max_streak AS (
    SELECT 
        studentid,
        MAX(streak_length) AS max_streak
    FROM streaks
    GROUP BY studentid
)

-- Step 5: get student(s) with highest streak
SELECT s.name, m.max_streak
FROM max_streak m
JOIN student s ON s.studentid = m.studentid
WHERE m.max_streak = (
    SELECT MAX(max_streak) FROM max_streak
);
