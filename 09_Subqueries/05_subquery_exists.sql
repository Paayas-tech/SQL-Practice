-- Topic: Subqueries with EXISTS

SELECT
    id,
    business_id,
    payment,
    priority
FROM projects
WHERE status = 'IN PROGRESS'
AND EXISTS (
    SELECT *
    FROM employees
    WHERE employees.current_project_id = projects.id
      AND years_in_company >= 5
)
ORDER BY id ASC;