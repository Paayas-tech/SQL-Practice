-- GROUP BY
--
-- Groups rows that have the same value in one or more columns.
--
-- Each unique value becomes one group.
--
-- Aggregate functions are then calculated separately for each group.
--
-- Common aggregate functions:
--
-- - COUNT()
-- - SUM()
-- - AVG()
-- - MAX()
-- - MIN()
--
-- Syntax:
--
-- SELECT column,
--        AGGREGATE_FUNCTION(column)
-- FROM table
-- GROUP BY column;
--
-- Example 1: Count students in each course

SELECT
    course_id,
    COUNT(*) AS total_students
FROM students
GROUP BY course_id;

-- Example 2: Average and total payment by priority

SELECT
    priority,
    AVG(payment) AS avg_project_payment,
    SUM(payment) AS total_project_payments
FROM projects_archive
WHERE status = 'COMPLETED'
GROUP BY priority
ORDER BY avg_project_payment DESC;

-- Key Points:
--
-- - GROUP BY creates one row for each unique value.
-- - Aggregate functions are calculated for each group separately.
-- - Every selected column must either:
--   • be included in the GROUP BY clause, or
--   • use an aggregate function.