--Topic      : Changing Data in SQL
--Description: Practice queries for INSERT, UPDATE and DELETE


-- INSERT

INSERT INTO projects
(
    business_id,
    project_type,
    payment,
    status,
    depends_on_project_id,
    priority
)
VALUES
(
    5,
    'Software',
    450000,
    'IN PROGRESS',
    10,
    'HIGH'
);

-- Verify the inserted record

SELECT *
FROM projects
ORDER BY id DESC;


-- Practice Example  --

INSERT INTO projects
(
    business_id,
    project_type,
    payment,
    status,
    depends_on_project_id,
    priority
)
VALUES
(
    2,
    'Website',
    120000,
    'COMPLETED',
    NULL,
    'MEDIUM'
);

SELECT *
FROM projects
ORDER BY id DESC;

--------------------------------------------------

-- UPDATE

UPDATE employees
SET
    firstname = 'Garret',
    lastname = 'Kayce',
    email = 'garret.kayce@zivup.com'
WHERE id = 8;

-- Verify the updated employee

SELECT *
FROM employees
WHERE id = 8;

-- Practice Example  --

UPDATE employees
SET
    firstname = 'John'
WHERE id = 5;

SELECT *
FROM employees
WHERE id = 5;


--------------------------------------------------
-- DELETE

DELETE
FROM projects
WHERE status IN ('CANCELLED', 'COMPLETED');

-- Verify remaining projects

SELECT COUNT(*) AS remaining_projects_count
FROM projects;


-- Practice Example --

DELETE
FROM employees
WHERE id = 15;

SELECT *
FROM employees
WHERE id = 15;


--------------------------------------------------
-- AUTOCOMMIT


-- PostgreSQL (pgAdmin) has autocommit enabled by default.
-- Changes made using INSERT UPDATE and DELETE are automatically saved.

-- Some databases such as Oracle do not enable autocommit by default.
-- In those databases changes must be committed manually.

-- Example:

BEGIN;

INSERT INTO employees
(name, position)
VALUES
('John Doe', 'Engineer');

UPDATE employees
SET position = 'Senior Engineer'
WHERE name = 'John Doe';

COMMIT;



