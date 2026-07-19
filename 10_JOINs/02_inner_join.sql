-- Practice Question

SELECT
    employees.id AS Employee_ID,
    employees.firstname AS First_Name,
    employees.lastname AS Last_Name
FROM employees
INNER JOIN projects
ON employees.current_project_id = projects.id
WHERE projects.project_type = 'Software'
AND projects.priority IN ('MEDIUM', 'HIGH')
ORDER BY employees.id ASC;