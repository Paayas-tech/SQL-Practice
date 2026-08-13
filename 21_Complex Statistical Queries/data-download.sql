 Data Download / Importing and Exploring Data

-- Find the earliest year in the dataset
SELECT MIN(year)
FROM salaries;

-- Find the latest year in the dataset
SELECT MAX(year)
FROM salaries;

-- Join salaries with job titles
SELECT *
FROM salaries
LEFT JOIN salaries_jobs
    ON salaries.job_id = salaries_jobs.id;