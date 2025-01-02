# Write your MySQL query statement below
SELECT su.user_id, IFNULL(ROUND(AVG(c.action = 'confirmed'),2),0) AS confirmation_rate
FROM Signups su
LEFT JOIN Confirmations c ON c.user_id = su.user_id
GROUP BY 1;