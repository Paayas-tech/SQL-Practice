-- ============================================
-- Section 24: Stored Procedures
-- Lecture 188: Overview
-- ============================================

-- Stored procedures allow us to store code blocks
-- inside the database and execute them later.

-- Main advantages:
-- 1. Store reusable code inside the database.
-- 2. Execute the stored code whenever needed.
-- 3. Combine stored procedures with permissions
--    for more fine-grained access control.

-- Example idea:
-- A user may have read-only access to a table,
-- but can insert or edit data through a predefined
-- stored procedure.

-- This allows the database to control exactly
-- which operations the user can perform.

-- Example project:
-- Data center access logging system
--
-- users          -> employees with keycards
-- rooms          -> rooms in the data center
-- access_log_data -> records of room access
--
-- A restricted user will have limited access
-- to the access log.

-- The following lectures will show how to:
-- - create stored procedures
-- - understand $$
-- - manage permissions on stored procedures

-- ============================================
-- Section 24: Stored Procedures
-- Lecture 189: Creating a stored procedure
-- ============================================

-- Create or replace a stored procedure
CREATE OR REPLACE PROCEDURE log_insert(
    room_id INTEGER,
    user_id INTEGER
)
LANGUAGE SQL
AS $$
    INSERT INTO access_log_data (
        room_id,
        user_id,
        "time"
    )
    VALUES (
        room_id,
        user_id,
        CURRENT_TIME
    );
$$;


-- Call the stored procedure
CALL log_insert(3, 2);