-- Lecture 164: ROLLUP


-- Average total pay by year and job
SELECT
    year,
    job_id,
    AVG(total_pay)
FROM salaries
GROUP BY ROLLUP(year, job_id);


-- Equivalent GROUPING SETS query
SELECT
    year,
    job_id,
    AVG(total_pay)
FROM salaries
GROUP BY GROUPING SETS (
    (),
    (year),
    (year, job_id)
);


--exercise example
SELECT 
    region,
    consultation_type,
    SUM(duration) AS total_duration
FROM consultation_records
GROUP BY ROLLUP(region, consultation_type)
ORDER BY region ASC, consultation_type ASC;