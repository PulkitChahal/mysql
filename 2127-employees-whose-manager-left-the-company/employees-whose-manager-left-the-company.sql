SELECT
    employee_id
FROM (
    SELECT 
        employee_id,
        salary,
        CASE WHEN manager_id IS NOT NULL
            AND manager_id NOT IN (SELECT employee_id FROM Employees) THEN 'NO'
        ELSE 'YES' END AS Available
    FROM Employees) AS e
WHERE Available = 'NO' AND salary < 30000
ORDER BY employee_id;