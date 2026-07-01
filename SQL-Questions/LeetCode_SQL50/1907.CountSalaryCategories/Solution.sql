select 'Low Salary' as category,sum(case
                                      when income<20000 then 1 else 0
                                     END ) AS accounts_count
from Accounts

UNION

SELECT 'Average Salary',
       SUM(CASE
               WHEN income BETWEEN 20000 AND 50000 THEN 1
               ELSE 0
           END)
FROM Accounts

UNION

SELECT 'High Salary',
       SUM(CASE
               WHEN income > 50000 THEN 1
               ELSE 0
           END)
FROM Accounts;
    
