-- Topic       : Complex SQL Operations


-- NULL

UPDATE projects
SET status = 'WAITING'
WHERE status IS NULL;

-- Verify updated records

SELECT *
FROM projects
WHERE status = 'WAITING'
ORDER BY id ASC;


-- Practice Example --

SELECT *
FROM employees
WHERE current_project_id IS NULL;

--------------------------------------------------
-- STRING FUNCTION

SELECT
    'Company Name: ' || name ||
    ', Number of Employees: ' || employee_count ||
    ', Industry Type: ' || industry_type ||
    ', Contact Email: ' || email AS business_description
FROM businesses
ORDER BY id ASC;


-- Practice Example --

SELECT
    firstname || ' ' || lastname AS full_name,
    email
FROM employees
ORDER BY firstname;

--------------------------------------------------
-- COALESCE

SELECT
    firstname,
    lastname,
    email,
    role,
    COALESCE(current_project_id, -1) AS current_project_id
FROM employees
ORDER BY id ASC;


-- Practice Example --

SELECT
    firstname,
    lastname,
    COALESCE(role, 'Not Assigned') AS role
FROM employees
ORDER BY id ASC;

--------------------------------------------------
-- CAST FUNCTION

SELECT
    firstname,
    lastname,
    email,
    COALESCE(CAST(current_project_id AS TEXT), 'Not Applicable') AS current_project_id,
    role
FROM employees
ORDER BY id ASC;


-- Practice Example --

SELECT
    firstname,
    lastname,
    CAST(years_in_company AS TEXT) AS years
FROM employees
ORDER BY id ASC;

--------------------------------------------------
-- NUMERIC FUNCTION

SELECT
    FLOOR(AVG(payment) / 1000) AS payment_in_thousands
FROM projects_archive
WHERE status != 'CANCELLED';


-- Practice Example --

SELECT
    CEIL(AVG(payment)) AS rounded_average_payment
FROM projects_archive;

--------------------------------------------------
-- CASE WHEN EXPRESSION

SELECT
    firstname || ' ' || lastname AS full_name,
    email,
    CASE
        WHEN role IN ('Software Engineer', 'DevOps Engineer', 'Security Engineer')
            THEN 'Engineer'
        WHEN role IN ('CEO', 'HR', 'Accounting', 'Manager')
            THEN 'Administration'
        WHEN role IN ('UI Designer')
            THEN 'Designer'
        ELSE 'Unspecified Role'
    END AS role,
    CASE
        WHEN years_in_company < 5
            THEN 'Junior'
        ELSE 'Senior'
    END AS seniority
FROM employees
ORDER BY id ASC;


-- Practice Example --

SELECT
    firstname,
    lastname,
    CASE
        WHEN years_in_company >= 10 THEN 'Experienced'
        WHEN years_in_company >= 5 THEN 'Intermediate'
        ELSE 'Beginner'
    END AS experience_level
FROM employees
ORDER BY years_in_company DESC;