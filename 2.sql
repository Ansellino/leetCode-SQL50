# Write your MySQL query statement below
SELECT name
FROM customer
WHERE referee_id NOT IN (
    SELECT referee_id
    FROM customer
    WHERE referee_id = 2
) OR referee_id is null;