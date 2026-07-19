-- CROSS JOIN
-- Combines every employee with every warning.

SELECT
    employees.firstname,
    employees.lastname,
    employees.email,
    warnings.reason,
    warnings.notes
FROM employees
CROSS JOIN warnings
ORDER BY
    employees.id ASC,
    warnings.id ASC;