# Write your MySQL query statement below
SELECT s.machine_id, ROUND(AVG(e.timestamp-s.timestamp),3) AS processing_time 
FROM Activity s
JOIN Activity e ON e.machine_id = s.machine_id
WHERE e.activity_type = 'end' AND s.activity_type = 'start'
GROUP BY s.machine_id;