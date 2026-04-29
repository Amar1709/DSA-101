# Write your MySQL query statement below

-- Table Accounts

SELECT
'Low Salary' as category,
COUNT(CASE WHEN income<20000 THEN 1 END) as accounts_count
FROM Accounts

UNION ALL

SELECT
'Average Salary' as category,
COUNT(CASE WHEN income BETWEEN 20000 AND 50000 THEN 1 END) as accounts_count
FROM Accounts

UNION ALL

SELECT
'High Salary' as category,
COUNT(CASE WHEN income>50000 THEN 1 END) as accounts_count
FROM Accounts




