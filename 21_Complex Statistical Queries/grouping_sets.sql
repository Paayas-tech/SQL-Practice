--GROUPING SETS and GROUPING


-- Average total pay for each year
SELECT
    year,
    AVG(total_pay)
FROM salaries
GROUP BY year;


-- Average total pay for all employees
SELECT
    AVG(total_pay)
FROM salaries;


-- Average total pay by year AND overall average
SELECT
    year,
    AVG(total_pay)
FROM salaries
GROUP BY GROUPING SETS (
    (year),
    ()
);


-- Multiple grouping sets
SELECT
    year,
    job_id,
    AVG(total_pay)
FROM salaries
GROUP BY GROUPING SETS (
    (year),
    (job_id),
    (year, job_id),
    ()
);


-- Using GROUPING()
SELECT
    year,
    job_id,
    AVG(total_pay),
    GROUPING(year) AS grouping_year,
    GROUPING(job_id) AS grouping_job
FROM salaries
GROUP BY GROUPING SETS (
    (year),
    (job_id),
    ()
);