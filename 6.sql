# Write your MySQL query statement below
SELECT employeeUNI.unique_id, employees.name
FROM employees
LEFT JOIN employeeUNI ON employeeUNI.id = employees.id;