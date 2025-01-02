# Write your MySQL query statement below
SELECT e.name, b.bonus
FROM Employee e
LEFT JOIN Bonus b 
ON b.empID = e.empID
WHERE b.bonus < 1000 OR b.bonus IS NULL;