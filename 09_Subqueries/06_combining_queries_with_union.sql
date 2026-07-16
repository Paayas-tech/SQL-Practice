-- Topic: Combining Queries with UNION / UNION ALL

-- Example 1: Combine teachers and students

SELECT
    first_name,
    last_name,
    email
FROM teachers

UNION ALL

SELECT
    first_name,
    last_name,
    email
FROM students;


-- Example 2: Count rows from multiple tables

SELECT
    'Businesses' AS category,
    COUNT(*) AS total_count
FROM businesses

UNION ALL

SELECT
    'Employees',
    COUNT(*)
FROM employees

UNION ALL

SELECT
    'Projects',
    COUNT(*)
FROM projects

ORDER BY total_count DESC;