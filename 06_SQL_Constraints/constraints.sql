-- Topic       : SQL Constraints


--------------------------------------------------
-- NOT NULL CONSTRAINT

DELETE FROM businesses_contacts;

ALTER TABLE businesses_contacts
DROP COLUMN fullname;

ALTER TABLE businesses_contacts
DROP COLUMN role;

ALTER TABLE businesses_contacts
DROP COLUMN business_id;

ALTER TABLE businesses_contacts
DROP COLUMN email;

ALTER TABLE businesses_contacts
ADD COLUMN fullname TEXT NOT NULL;

ALTER TABLE businesses_contacts
ADD COLUMN role TEXT NOT NULL;

ALTER TABLE businesses_contacts
ADD COLUMN business_id INT NOT NULL;

ALTER TABLE businesses_contacts
ADD COLUMN email TEXT NOT NULL;

INSERT INTO businesses_contacts
(
    phone_number,
    age,
    fullname,
    role,
    business_id,
    email
)
VALUES
(
    '5551234567',
    52,
    'Paisley Potter',
    'Chief Executive Officer',
    1,
    'paisley.potter@siferavita.org'
);

SELECT *
FROM businesses_contacts;


--------------------------------------------------
-- DEFAULT CONSTRAINT

CREATE TABLE employees_default_example
(
    id INT,
    fullname TEXT NOT NULL,
    role TEXT DEFAULT 'Employee',
    is_active BOOLEAN DEFAULT TRUE
);

INSERT INTO employees_default_example
(
    id,
    fullname
)
VALUES
(
    1,
    'John Smith'
);

SELECT *
FROM employees_default_example;


--------------------------------------------------
-- PRIMARY KEY

CREATE TABLE businesses_example
(
    id INT PRIMARY KEY,
    name TEXT NOT NULL,
    industry_type TEXT
);

INSERT INTO businesses_example
(
    id,
    name,
    industry_type
)
VALUES
(
    1,
    'Sifera Vita',
    'Technology'
);

SELECT *
FROM businesses_example;


--------------------------------------------------
-- SERIAL (AUTO INCREMENT)

CREATE TABLE contacts_serial_example
(
    id SERIAL PRIMARY KEY,
    fullname TEXT NOT NULL,
    email TEXT NOT NULL
);

INSERT INTO contacts_serial_example
(
    fullname,
    email
)
VALUES
(
    'Paisley Potter',
    'paisley.potter@siferavita.org'
);

SELECT *
FROM contacts_serial_example;