-- STRING_AGG()
-- Combines values from multiple rows into a single string.

SELECT
    jobtitle,
    STRING_AGG(employee_name, ', ' ORDER BY employee_name) AS employees
FROM salaries
GROUP BY jobtitle;


-- ARRAY_AGG()
-- Combines values from multiple rows into a PostgreSQL array.

SELECT
    jobtitle,
    ARRAY_AGG(employee_name ORDER BY employee_name) AS employees
FROM salaries
GROUP BY jobtitle;

-- STRING_AGG() -> multiple rows into one string
-- ARRAY_AGG()  -> multiple rows into one array

-- Both are PostgreSQL-specific functions and are not part of the SQL standard.