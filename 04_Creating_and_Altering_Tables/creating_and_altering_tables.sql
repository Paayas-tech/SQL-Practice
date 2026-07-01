-- Topic       : Creating and Altering Tables


-- CREATE TABLE

CREATE TABLE businesses_contacts
(
    fullname TEXT,
    favorite_food TEXT,
    phone_number VARCHAR(10),
    employee_role TEXT
);

INSERT INTO businesses_contacts
(
    fullname,
    favorite_food,
    phone_number,
    employee_role
)
VALUES
(
    'Paisley Potter',
    'Eggs',
    '5551234567',
    'Chief Executive Officer'
);

-- Verify inserted record

SELECT *
FROM businesses_contacts;


-- Practice Example --

CREATE TABLE students
(
    student_id INT,
    fullname VARCHAR(50),
    course VARCHAR(50)
);

INSERT INTO students
(
    student_id,
    fullname,
    course
)
VALUES
(
    1,
    'John Smith',
    'Computer Science'
);

SELECT *
FROM students;


--------------------------------------------------
-- ALTER TABLE

ALTER TABLE businesses_contacts
ADD COLUMN email TEXT;

ALTER TABLE businesses_contacts
RENAME COLUMN employee_role TO role;

ALTER TABLE businesses_contacts
DROP COLUMN favorite_food;

UPDATE businesses_contacts
SET email = 'paisley.potter@siferavita.org'
WHERE fullname = 'Paisley Potter'
AND phone_number = '5551234567';

-- Verify changes

SELECT *
FROM businesses_contacts;


-- Practice Example --

ALTER TABLE students
ADD COLUMN email VARCHAR(100);

ALTER TABLE students
RENAME COLUMN course TO department;

UPDATE students
SET email = 'john.smith@example.com'
WHERE student_id = 1;

SELECT *
FROM students;