-- First Transaction

BEGIN TRANSACTION;

UPDATE projects
SET status = 'COMPLETED'
WHERE id = 6;

UPDATE projects
SET status = 'IN PROGRESS'
WHERE id = 7;

UPDATE employees
SET current_project_id = NULL
WHERE current_project_id = 6;

UPDATE employees
SET current_project_id = 7
WHERE id IN (18, 19);

COMMIT;

SELECT *
FROM projects
WHERE id IN (6, 7)
ORDER BY id ASC;

SELECT *
FROM employees
WHERE current_project_id = 7
ORDER BY id ASC;