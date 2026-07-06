-- Topic       : Table Management

-- BOOLEAN DATA TYPE

DELETE FROM businesses_contacts;

ALTER TABLE businesses_contacts
ADD COLUMN authorized_for_decisions BOOLEAN NOT NULL;

INSERT INTO businesses_contacts
(
    phone_number,
    age,
    fullname,
    role,
    business_id,
    email,
    authorized_for_decisions
)
VALUES
(
    '5551234567',
    52,
    'Paisley Potter',
    'Chief Executive Officer',
    1,
    'paisley.potter@siferavita.org',
    TRUE
);

-- Verify inserted record

SELECT *
FROM businesses_contacts;


--------------------------------------------------
-- BYTEA DATA TYPE

-- BYTEA is used to store binary data such as images,
-- PDFs, audio files or other files.

CREATE TABLE files_example
(
    id SERIAL PRIMARY KEY,
    file_name TEXT,
    file_data BYTEA
);

-- Verify table creation

SELECT *
FROM files_example;


--------------------------------------------------
-- TRUNCATE TABLE

-- Removes all rows from a table but keeps the table structure.

TRUNCATE TABLE files_example;

-- Verify

SELECT *
FROM files_example;


--------------------------------------------------
-- DROP TABLE

-- Permanently deletes the table.

DROP TABLE files_example;


--------------------------------------------------
-- pgAdmin Notes

-- pgAdmin allows you to:
-- • Create tables
-- • Modify table structure
-- • View table data
-- • Delete tables
-- • Backup and Restore databases