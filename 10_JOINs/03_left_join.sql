/*
=========================================
SECTION 9 - JOINS
Lecture 03: LEFT JOIN
=========================================

What I learned:
- LEFT JOIN returns all rows from the left table.
- Matching rows are returned from the right table.
- If no matching row exists in the right table,
  its columns contain NULL.

Syntax:

SELECT columns
FROM table1
LEFT JOIN table2
ON table1.column = table2.column;
*/

Example:

SELECT
    employees.id,
    employees.firstname,
    employees.lastname,
    employees.role,
    projects.project_type,
    projects.status AS project_status
FROM employees
LEFT JOIN projects
ON employees.current_project_id = projects.id
ORDER BY employees.id ASC;
