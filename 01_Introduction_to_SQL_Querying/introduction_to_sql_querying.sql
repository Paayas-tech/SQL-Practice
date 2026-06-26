
-- SELECT
-- Display all employee details
SELECT *
FROM employees;

------------------------------------------------------------------

-- WHERE

-- Display first name, last name and email of software
-- engineers having more than 3 years in the company
SELECT
    firstname,
    lastname,
    email
FROM employees
WHERE role = 'Software Engineer'
  AND years_in_company > 3;

------------------------------------------------------------------------------

-- AGGREGATE FUNCTIONS
-- Find minimum, maximum and average project payment
SELECT
    MIN(payment) AS lowest_payment,
    MAX(payment) AS highest_payment,
    AVG(payment) AS average_payment
FROM projects
WHERE status = 'IN PROGRESS';


--------------------------------------------------------

-- DISTINCT
-- Count unique job roles
SELECT
    COUNT(DISTINCT role) AS job_count
FROM employees;


--------------------------------------------------------

-- LIKE
-- Count employees having .com email addresses
SELECT
    COUNT(*) AS com_employees
FROM employees
WHERE email LIKE '%.com';

-- Count employees not having .com email addresses
SELECT
    COUNT(*) AS no_com_employees
FROM employees
WHERE email NOT LIKE '%.com';


--------------------------------------------------------

-- IN
-- Total earnings from selected businesses
SELECT
    SUM(payment) AS total_earnings
FROM projects
WHERE business_id IN (1, 2, 4)
  AND status = 'COMPLETED';


--------------------------------------------------------

-- BETWEEN
-- Count projects within selected payment ranges
SELECT
    COUNT(*) AS david_count
FROM projects
WHERE payment BETWEEN 50000 AND 99999
   OR payment BETWEEN 150000 AND 199999;

SELECT
    COUNT(*) AS amanda_count
FROM projects
WHERE payment BETWEEN 100000 AND 149999
   OR payment BETWEEN 200000 AND 249999;


--------------------------------------------------------

-- ORDER BY
-- Display businesses sorted by employee count
SELECT
    name,
    employee_count,
    industry_type
FROM businesses
ORDER BY employee_count DESC,
         id;


--------------------------------------------------------

-- LIMIT & OFFSET (FETCH)
-- Display first 5 employees
SELECT
    firstname,
    lastname,
    email
FROM employees
ORDER BY years_in_company DESC,
         id ASC
OFFSET 0
FETCH 5;

-- Display next 5 employees
SELECT
    firstname,
    lastname,
    email
FROM employees
ORDER BY years_in_company DESC,
         id ASC
OFFSET 5
FETCH 5;

