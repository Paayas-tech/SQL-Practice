-- Topic       : SQL Data Types

--------------------------------------------------
-- TEXT DATA TYPES
--------------------------------------------------

-- VARCHAR: variable-length text
ALTER TABLE businesses_contacts
ADD COLUMN city VARCHAR(50);

-- CHAR: fixed-length text
ALTER TABLE businesses_contacts
ADD COLUMN country_code CHAR(2);

-- TEXT: long text
ALTER TABLE businesses_contacts
ADD COLUMN notes TEXT;

UPDATE businesses_contacts
SET
    city = 'New York',
    country_code = 'US',
    notes = 'Primary contact person'
WHERE email = 'paisley.potter@siferavita.org';

SELECT *
FROM businesses_contacts;


--------------------------------------------------
-- INTEGER DATA TYPES
--------------------------------------------------

-- SMALLINT: small whole number
ALTER TABLE businesses_contacts
ADD COLUMN age SMALLINT;

-- INT: standard whole number
ALTER TABLE businesses_contacts
ADD COLUMN business_id INT;

-- BIGINT: very large whole number
ALTER TABLE businesses_contacts
ADD COLUMN phone_number_backup BIGINT;

UPDATE businesses_contacts
SET
    age = 52,
    business_id = 1,
    phone_number_backup = 5551234567
WHERE email = 'paisley.potter@siferavita.org';

SELECT *
FROM businesses_contacts;


--------------------------------------------------
-- DECIMAL DATA TYPES
--------------------------------------------------

-- FLOAT: approximate decimal value
ALTER TABLE businesses_contacts
ADD COLUMN rating FLOAT;

-- DECIMAL: exact decimal value
ALTER TABLE businesses_contacts
ADD COLUMN monthly_salary DECIMAL(10, 2);

UPDATE businesses_contacts
SET
    rating = 4.8,
    monthly_salary = 85000.50
WHERE email = 'paisley.potter@siferavita.org';

SELECT *
FROM businesses_contacts;


--------------------------------------------------
-- BOOLEAN DATA TYPE
--------------------------------------------------

-- BOOLEAN: TRUE or FALSE value
ALTER TABLE businesses_contacts
ADD COLUMN is_active BOOLEAN;

UPDATE businesses_contacts
SET is_active = TRUE
WHERE email = 'paisley.potter@siferavita.org';

SELECT *
FROM businesses_contacts;


--------------------------------------------------
-- BYTEA DATA TYPE
--------------------------------------------------

-- BYTEA: stores binary data
ALTER TABLE businesses_contacts
ADD COLUMN profile_file BYTEA;

SELECT *
FROM businesses_contacts;