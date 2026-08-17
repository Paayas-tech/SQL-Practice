-- Common Table Expression (CTE)
-- A CTE creates a named intermediate result that can be used
-- like a temporary table in the main query.

WITH salaries_with_total_pay_average AS (
    SELECT *,
           AVG(total_pay) OVER(PARTITION BY year) AS total_pay_average
    FROM salaries
)
SELECT *
FROM salaries_with_total_pay_average
WHERE total_pay > total_pay_average;


-- Multiple CTEs can also be defined and used together.
-- Example structure:

WITH first_result AS (
    SELECT ...
),
second_result AS (
    SELECT ...
)
SELECT ...
FROM first_result
JOIN second_result ON ...;
