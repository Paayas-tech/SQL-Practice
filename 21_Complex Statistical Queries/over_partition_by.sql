-- Lecture 165: OVER and PARTITION BY


-- Average total pay across the whole table
SELECT
    employee_name,
    total_pay,
    AVG(total_pay) OVER() AS average_total_pay
FROM salaries;


-- Difference between individual salary and overall average
SELECT
    employee_name,
    total_pay,
    total_pay - AVG(total_pay) OVER() AS difference_from_average
FROM salaries;


-- Average total pay for each year
-- Individual rows are kept
SELECT
    year,
    employee_name,
    total_pay,
    AVG(total_pay) OVER(
        PARTITION BY year
    ) AS yearly_average
FROM salaries;


-- Find employees earning more than their yearly average
SELECT *
FROM (
    SELECT
        year,
        employee_name,
        total_pay,
        AVG(total_pay) OVER(
            PARTITION BY year
        ) AS yearly_average
    FROM salaries
) AS data
WHERE total_pay > yearly_average;

-- exercise example
SELECT 
    name, 
    industry_type,
    employee_count, 
    SUM(employee_count) OVER(PARTITION BY industry_type) AS industry_employee_count, 
    CAST(employee_count AS FLOAT) / SUM(employee_count) OVER(PARTITION BY industry_type) AS industry_employee_ratio
FROM 
    businesses
ORDER BY 
    id ASC;